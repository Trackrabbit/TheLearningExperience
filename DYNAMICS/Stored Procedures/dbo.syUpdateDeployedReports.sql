SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[syUpdateDeployedReports]   @CompanyID varchar(5),  @ObjectType smallint,  @ObjectID varchar(40),  @DeployedVersion varchar(20),  @DeployedPath varchar(500) AS BEGIN  DECLARE @count int  SELECT @count = COUNT(DEX_ROW_ID) FROM syDeployedReports  WHERE CompanyID = @CompanyID  AND ObjectType = @ObjectType  AND ObjectID = @ObjectID  IF (@count > 0)  BEGIN  UPDATE syDeployedReports set  DeployedVersion = @DeployedVersion,  DeployedPath = @DeployedPath,  DeployedDate = GETDATE()  WHERE CompanyID = @CompanyID  AND ObjectType = @ObjectType  AND ObjectID = @ObjectID  END  ELSE  BEGIN  INSERT INTO syDeployedReports  SELECT @CompanyID, @ObjectType, @ObjectID,   @DeployedVersion, @DeployedPath, GETDATE()  END END   
GO
GRANT EXECUTE ON  [dbo].[syUpdateDeployedReports] TO [DYNGRP]
GO
