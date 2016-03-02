SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[ws_getall_WSInstallStatus] 
( 
	@companyListType smallint, 
	@dynamicsVersionMajor smallint, 
	@dynamicsVersionMinor smallint, 
	@webServiceVersionMajor int, 
	@webServiceVersionMinor int, 
	@webServiceVersionBuild int, 
	@webServiceVersionRevision int, 
	@eConnectVersionLikeExpression varchar(25), 
	@returnValue int = NULL OUT 
) 
AS 
 
declare @ERROR_VAR int 
declare @ROWCOUNT_VAR int 
 
IF @companyListType = 1 
	-- Return valid WS-enabled companies 
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
	WHERE EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE name = INTERID) 
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
			FROM WSInstallStatus (nolock) 
			where WSInstallStatus.InstallStep = WSInstallSteps.InstallStep 
			and DatabaseName = INTERID 
			and Status = 0 
			and VersionMajor = @webServiceVersionMajor 
			and VersionMinor = @webServiceVersionMinor 
			and VersionBuild = @webServiceVersionBuild 
			and VersionRevision = @webServiceVersionRevision) 
		and IsCompany = 1) 
	and EXISTS (select DatabaseName from WSInstallStatus (nolock) where DatabaseName = INTERID) 
	and EXISTS (select * from WSInstallSteps where IsCompany = 1) 
	and databasepropertyex(INTERID, 'Status') = 'ONLINE' 
	and databasepropertyex(INTERID, 'Updateability') = 'READ_WRITE' 
	END 
 
ELSE IF @companyListType = 2 
	-- Return companies that have failed on a WS install 
	BEGIN 
	-- Returns valid companies that meet the following requirements: 
	--	(1) Exist in the SY01500 table 
	--	(2) Exist as a valid SQL database 
	-- 	(3) Exist in the DB_Upgrade table with a status of 0, and the proper version 
	--	(4) Have had a failed installation 
	--	(5) Is online 
	--	(6) Supports read/write 
 
	SELECT INTERID, CMPANYID, CMPNYNAM 
	FROM SY01500 
	WHERE EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE name = INTERID) 
	and EXISTS( 
		select db_name 
		from DB_Upgrade 
		where db_name = INTERID 
		and db_status = 0 
		and db_verMajor = @dynamicsVersionMajor 
		and db_verMinor = @dynamicsVersionMinor) 
	and EXISTS( 
		select * 
		from WSInstallSteps 
		where EXISTS ( 
			select InstallStep  
			FROM WSInstallStatus 
			where WSInstallStatus.InstallStep = WSInstallSteps.InstallStep 
			and DatabaseName = INTERID 
			and Status = 1 
			and VersionMajor = @webServiceVersionMajor 
			and VersionMinor = @webServiceVersionMinor 
			and VersionBuild = @webServiceVersionBuild 
			and VersionRevision = @webServiceVersionRevision) 
		and IsCompany = 1) 
	and EXISTS (select DatabaseName from WSInstallStatus (nolock) where DatabaseName = INTERID) 
	and EXISTS (select * from WSInstallSteps where IsCompany = 1) 
	and databasepropertyex(INTERID, 'Status') = 'ONLINE' 
	and databasepropertyex(INTERID, 'Updateability') = 'READ_WRITE' 
	END 
 
ELSE IF @companyListType = 3 
	-- Return companies that are valid and have not been installed to already 
	BEGIN 
	-- Returns valid companies that meet the following requirements: 
	--	(1) Exist in the SY01500 table 
	--	(2) Exist as a valid SQL database 
	-- 	(3) Exist in the DB_Upgrade table with a status of 0, and the proper version 
	--	(4) Have never been installed to before 
	--	(5) Is online 
	--	(6) Supports read/write 
 
	SELECT INTERID, CMPANYID, CMPNYNAM 
	FROM SY01500 
	WHERE EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE name = INTERID) 
	and EXISTS( 
		select db_name 
		from DB_Upgrade 
		where db_name = INTERID 
		and db_status = 0 
		and db_verMajor = @dynamicsVersionMajor 
		and db_verMinor = @dynamicsVersionMinor) 
	and NOT EXISTS (select DatabaseName from WSInstallStatus (nolock) where DatabaseName = INTERID) 
	and EXISTS (select * from WSInstallSteps where IsCompany = 1) 
	and databasepropertyex(INTERID, 'Status') = 'ONLINE' 
	and databasepropertyex(INTERID, 'Updateability') = 'READ_WRITE' 
	END 
ELSE IF @companyListType = 4 
	-- Return companies that are installed, but are of an older version. 
	BEGIN 
	-- Returns valid companies that meet the following requirements: 
	--	(1) Exist in the SY01500 table 
	--	(2) Exist as a valid SQL database 
	-- 	(3) Exist in the DB_Upgrade table with a status of 0, and the proper version 
	--	(4) Exists in the WSInstallStatus table but is an older version. 
	--	(5) Is online 
	--	(6) Supports read/write 
 
		SELECT distinct Reg.INTERID, Reg.CMPANYID, Reg.CMPNYNAM, wsStatus.VersionMajor, wsStatus.VersionMinor,wsStatus.VersionBuild, wsStatus.VersionRevision 
		FROM SY01500 as Reg 
		JOIN WSInstallStatus as wsStatus on Reg.INTERID = wsStatus.DatabaseName 
		WHERE  
			EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE name = Reg.INTERID) 
			and EXISTS( 
				select db_name from DB_Upgrade 
				where  
					db_name = Reg.INTERID 
					and db_status = 0 
					and db_verMajor = @dynamicsVersionMajor 
					and db_verMinor = @dynamicsVersionMinor 
				) 
			and NOT EXISTS ( 
				select DatabaseName  
				from WSInstallStatus (nolock) 
				where  
					DatabaseName = Reg.INTERID 
					and Status = 1 
					and  
						( 
							VersionMajor < @webServiceVersionMajor				 
							or VersionMinor < @webServiceVersionMinor 
							or VersionBuild < @webServiceVersionBuild 
							or VersionRevision < @webServiceVersionRevision 
						) 
					) 
		    and EXISTS ( 
				select DatabaseName  
				from WSInstallStatus (nolock) 
				where  
					DatabaseName = Reg.INTERID 
					and Status = 0 
					and  
						( 
							VersionMajor < @webServiceVersionMajor				 
							or VersionMinor < @webServiceVersionMinor 
							or VersionBuild < @webServiceVersionBuild 
							or VersionRevision < @webServiceVersionRevision 
						) 
					) 
			and EXISTS (select 1 from WSInstallSteps where IsCompany = 1) 
			and databasepropertyex(Reg.INTERID, 'Status') = 'ONLINE' 
			and databasepropertyex(Reg.INTERID, 'Updateability') = 'READ_WRITE' 
	END 
ELSE IF @companyListType = 5 
	-- Return companies that have failed on a WS install and are an older version 
	BEGIN 
	-- Returns valid companies that meet the following requirements: 
	--	(1) Exist in the SY01500 table 
	--	(2) Exist as a valid SQL database 
	-- 	(3) Exist in the DB_Upgrade table with a status of 0, and the proper version 
	--	(4) Have had a failed installation and are an older version 
	--	(5) Is online 
	--	(6) Supports read/write 
 
		SELECT distinct Reg.INTERID, Reg.CMPANYID, Reg.CMPNYNAM, wsStatus.VersionMajor 
		FROM SY01500 as Reg 
		JOIN WSInstallStatus as wsStatus on Reg.INTERID = wsStatus.DatabaseName 
		WHERE  
			EXISTS(SELECT name FROM master.dbo.sysdatabases WHERE name = INTERID)	--(2)Exists as a DB 
			and EXISTS(																--(3)Exists in DB_Upgrade 
				select db_name 
				from DB_Upgrade 
				where  
					db_name = INTERID 
					and db_status = 0 
					and db_verMajor = @dynamicsVersionMajor 
					and db_verMinor = @dynamicsVersionMinor 
			) 
			and EXISTS(																--(4)Failed Install Step, and older Version 
				select * 
				from WSInstallSteps 
				where  
					EXISTS  
					( 
						select InstallStep  
						FROM WSInstallStatus (nolock) 
						where  
							WSInstallStatus.InstallStep = WSInstallSteps.InstallStep 
							and DatabaseName = INTERID 
							and Status = 1 
							and  
							(	--Old Major,Minor,Build, or Revision. If anything is older. 
								VersionMajor < @webServiceVersionMajor				 
								or VersionMinor < @webServiceVersionMinor 
								or VersionBuild < @webServiceVersionBuild 
								or VersionRevision < @webServiceVersionRevision 
							) 
					) 
					and IsCompany = 1 
			) 
			and EXISTS (select DatabaseName from WSInstallStatus (nolock) where DatabaseName = INTERID) 
			and EXISTS (select * from WSInstallSteps where IsCompany = 1) 
			and databasepropertyex(INTERID, 'Status') = 'ONLINE' 
			and databasepropertyex(INTERID, 'Updateability') = 'READ_WRITE' 
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
GRANT EXECUTE ON  [dbo].[ws_getall_WSInstallStatus] TO [DYNGRP]
GO
