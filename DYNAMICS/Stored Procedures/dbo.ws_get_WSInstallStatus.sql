SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[ws_get_WSInstallStatus] 
( 
	@companyId smallint, 
	@dynamicsVersionMajor smallint, 
	@dynamicsVersionMinor smallint, 
	@webServiceVersionMajor int, 
	@webServiceVersionMinor int, 
	@webServiceVersionBuild int, 
	@webServiceVersionRevision int, 
	@returnValue int = NULL OUT 
) 
AS 
 
declare @ERROR_VAR int 
declare @ROWCOUNT_VAR int 
declare @isCompany bit 
select @isCompany = case when @companyId = -32767 then 0 else 1 end 
 
IF @isCompany = 1 
	-- Deal with company databases 
	BEGIN 
	-- Returns valid companies that meet the following requirements: 
	--	(1) Exist in the SY01500 table 
	--	(2) Exist as a valid SQL database 
	-- 	(3) Exist in the DB_Upgrade table with a status of 0, and the proper version 
	--	(4) Have completed ALL InstallSteps with a status of 0, and the proper version 
	--	(5) Is online 
	--	(6) Supports read/write 
 
	SELECT INTERID, CMPANYID, CMPNYNAM 
	FROM SY01500 
	WHERE CMPANYID = @companyId 
	and EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE name = INTERID) 
	and EXISTS( 
		select db_name 
		from DB_Upgrade 
		where db_name = INTERID 
		and db_status = 0 
		and db_verMajor = @dynamicsVersionMajor 
		and db_verMinor = @dynamicsVersionMinor) 
	and NOT EXISTS( 
		select * 
		from WSInstallSteps 
		where NOT EXISTS ( 
			select InstallStep  
			FROM WSInstallStatus 
			where WSInstallStatus.InstallStep = WSInstallSteps.InstallStep 
			and DatabaseName = INTERID 
			and Status = 0 
			and VersionMajor = @webServiceVersionMajor 
			and VersionMinor = @webServiceVersionMinor 
			and VersionBuild = @webServiceVersionBuild 
			and VersionRevision = @webServiceVersionRevision) 
		and IsCompany = @isCompany) 
	and EXISTS (select DatabaseName from WSInstallStatus where DatabaseName = INTERID) 
	and EXISTS (select * from WSInstallSteps where IsCompany = @isCompany) 
	and databasepropertyex(INTERID, 'Status') = 'ONLINE' 
	and databasepropertyex(INTERID, 'Updateability') = 'READ_WRITE' 
	END 
ELSE 
	-- Deal with the System database 
	BEGIN 
	SELECT db_name AS INTERID, -32767 AS CMPANYID, db_name AS CMPNYNAM 
	FROM DB_Upgrade 
	where db_name = 'DYNAMICS' 
	and db_status = 0 
	and db_verMajor = @dynamicsVersionMajor 
	and db_verMinor = @dynamicsVersionMinor 
	and NOT EXISTS( 
		select * 
		from WSInstallSteps 
		where NOT EXISTS ( 
			select InstallStep  
			FROM WSInstallStatus 
			where WSInstallStatus.InstallStep = WSInstallSteps.InstallStep 
			and DatabaseName = 'DYNAMICS' 
			and Status = 0 
			and VersionMajor = @webServiceVersionMajor 
			and VersionMinor = @webServiceVersionMinor 
			and VersionBuild = @webServiceVersionBuild 
			and VersionRevision = @webServiceVersionRevision) 
		and IsCompany = @isCompany) 
	and EXISTS (select DatabaseName from WSInstallStatus where DatabaseName = 'DYNAMICS') 
	and EXISTS (select * from WSInstallSteps where IsCompany = @isCompany) 
	and databasepropertyex('DYNAMICS', 'Status') = 'ONLINE' 
	and databasepropertyex('DYNAMICS', 'Updateability') = 'READ_WRITE' 
	END 
 
SELECT @ERROR_VAR = @@ERROR,@ROWCOUNT_VAR=@@ROWCOUNT 
  
IF @ERROR_VAR = 0 AND @ROWCOUNT_VAR = 1 
   BEGIN 
      SET @returnValue = 0 
   END 
ELSE 
   BEGIN 
      IF @ERROR_VAR <> 0  
         SET @returnValue = @ERROR_VAR 
      ELSE 
         SET @returnValue =  -99 -- UNEXPECTED NR OF RECORDS AFFECTED 
   END 
  
GO
GRANT EXECUTE ON  [dbo].[ws_get_WSInstallStatus] TO [DYNGRP]
GO
