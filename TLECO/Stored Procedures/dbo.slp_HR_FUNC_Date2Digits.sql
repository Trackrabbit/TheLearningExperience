SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_HR_FUNC_Date2Digits] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HR_FUNC_Date2Digits]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[HR_FUNC_Date2Digits] '  select @sqlstring1 =  'create function [dbo].[HR_FUNC_Date2Digits] (@sValue VARCHAR(2)) returns VARCHAR(2) ' + 'as  '+ 'begin  '+ ' IF (LEN(@sValue) < 2 )  SET @sValue = ''0'' + @sValue ' + ' RETURN @sValue ' + ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_HR_FUNC_Date2Digits] TO [DYNGRP]
GO
