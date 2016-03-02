SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_DYN_FUNC_Account_Category_Number] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000)   select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DYN_FUNC_Account_Category_Number]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[DYN_FUNC_Account_Category_Number] '  select @sqlstring1 =  'create function [dbo].[DYN_FUNC_Account_Category_Number] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'declare @CategoryDesc varchar(100) ' +  'select @CategoryDesc = ' + '(select rtrim(ACCATDSC) from GL00102 ' +  'where ACCATNUM = @iIntEnum) ' + 'set @oVarcharValuestring = isnull(@CategoryDesc,'''')' + ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_DYN_FUNC_Account_Category_Number] TO [DYNGRP]
GO
