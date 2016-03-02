SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_DYN_FUNC_Closed_Year] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DYN_FUNC_Closed_Year]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[DYN_FUNC_Closed_Year] '  select @sqlstring1 =  'create function [dbo].[DYN_FUNC_Closed_Year] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 0 then '''' ' +  ' else ltrim(str(@iIntEnum)) ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_DYN_FUNC_Closed_Year] TO [DYNGRP]
GO
