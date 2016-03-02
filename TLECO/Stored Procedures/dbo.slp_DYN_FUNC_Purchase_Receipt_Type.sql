SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_DYN_FUNC_Purchase_Receipt_Type] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Adjustment varchar(255),  @Variance varchar(255),  @Transfer varchar(255),  @Override varchar(255),  @Receipt varchar(255),  @Return varchar(255),  @Assembly varchar(255)  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_Purchase_Receipt_Type' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Adjustment output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Variance output  select @I_iFunctionEnum = 3 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Transfer output  select @I_iFunctionEnum = 4 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Override output  select @I_iFunctionEnum = 5 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Receipt output  select @I_iFunctionEnum = 6 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Return output  select @I_iFunctionEnum = 7 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Assembly output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DYN_FUNC_Purchase_Receipt_Type]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[DYN_FUNC_Purchase_Receipt_Type] '  select @sqlstring1 =  'create function [dbo].[DYN_FUNC_Purchase_Receipt_Type] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @Adjustment + '''' +  ' when @iIntEnum = 2 then ''' + @Variance + '''' +  ' when @iIntEnum = 3 then ''' + @Transfer + '''' +  ' when @iIntEnum = 4 then ''' + @Override + '''' +  ' when @iIntEnum = 5 then ''' + @Receipt + '''' +  ' when @iIntEnum = 6 then ''' + @Return + '''' +  ' when @iIntEnum = 7 then ''' + @Assembly + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_DYN_FUNC_Purchase_Receipt_Type] TO [DYNGRP]
GO
