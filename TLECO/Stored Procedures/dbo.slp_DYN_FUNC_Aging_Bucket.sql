SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_DYN_FUNC_Aging_Bucket] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000)   select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DYN_FUNC_Aging_Bucket]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[DYN_FUNC_Aging_Bucket] '  select @sqlstring1 =  'create function [dbo].[DYN_FUNC_Aging_Bucket] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'declare @PeriodDesc varchar(100) ' + 'select @PeriodDesc = ' + '(select rtrim(RMPERDSC) from RM40201 ' +  'where INDEX1 = @iIntEnum) ' + 'set @oVarcharValuestring = isnull(@PeriodDesc,'''')' + ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_DYN_FUNC_Aging_Bucket] TO [DYNGRP]
GO
