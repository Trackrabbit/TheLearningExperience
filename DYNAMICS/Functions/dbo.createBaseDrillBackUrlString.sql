SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[createBaseDrillBackUrlString]   (  @CompanyName  nvarchar(128),  @ProductID  int  )  RETURNS varchar(255) AS BEGIN   DECLARE  @DataBaseInstance     varchar(128),  @ServerName     varchar(128),  @URIstring        varchar(255),   @CompanyID varchar(128),  @ProductNumber    varchar(50)   select @DataBaseInstance = convert(varchar(128), SERVERPROPERTY('InstanceName'))  select @ServerName = convert(varchar(128), SERVERPROPERTY('MachineName'))   select @DataBaseInstance = isnull(@DataBaseInstance, '')   select @CompanyID = @CompanyName  select @ProductNumber = convert(varchar(10), @ProductID)   select @URIstring = 'dgpp://DGPB/?Db=' + @DataBaseInstance + '&Srv=' + @ServerName + '&Cmp=' + @CompanyID + '&Prod=' + @ProductNumber   RETURN(@URIstring) END   
GO
GRANT EXECUTE ON  [dbo].[createBaseDrillBackUrlString] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[createBaseDrillBackUrlString] TO [rpt_all user]
GO
