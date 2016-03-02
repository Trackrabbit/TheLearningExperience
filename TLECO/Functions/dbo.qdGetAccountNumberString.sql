SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE FUNCTION [dbo].[qdGetAccountNumberString](@TableName varchar(31)) RETURNS varchar(1000) AS BEGIN  DECLARE @SQL varchar(1000) DECLARE @NUMBER_OF_SEGMENTS smallint DECLARE @SEGMENT smallint DECLARE @LOOP tinyint declare @ADDSTR varchar(200) declare @seperator varchar(1)  select @NUMBER_OF_SEGMENTS = MXNUMSEG from DYNAMICS.dbo.SY003001 select @seperator = ACSEGSEP from DYNAMICS.dbo.SY01500 set @SQL = ''  SET @SEGMENT = 1 WHILE @SEGMENT <= @NUMBER_OF_SEGMENTS BEGIN  SET @ADDSTR = 'rtrim(ltrim([' + rtrim(ltrim(@TableName)) + '].[ACTNUMBR_' + ltrim(rtrim(str(@SEGMENT))) + ']))'  if (@SEGMENT < @NUMBER_OF_SEGMENTS)   begin  SET @SQL = @SQL + rtrim(ltrim(@ADDSTR)) + ' + ''-'' + '  end  else  begin  SET @SQL = @SQL + rtrim(ltrim(@ADDSTR))  end  SET @SEGMENT = @SEGMENT + 1 END  return rtrim(ltrim(@SQL)) END   
GO
GRANT EXECUTE ON  [dbo].[qdGetAccountNumberString] TO [DYNGRP]
GO
