SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_HR_FUNC_Benefit_Method] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Percent_of_Gross_Wages varchar(255),  @Percent_of_Net_Wages varchar(255),  @Percent_of_Deduction varchar(255),  @Fixed_Amount varchar(255),  @Amount_per_Unit varchar(255)  select @I_iDictID = 414 select @I_sFunctionName = 'HR_FUNC_Benefit_Method' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Percent_of_Gross_Wages output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Percent_of_Net_Wages output  select @I_iFunctionEnum = 3 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Percent_of_Deduction output  select @I_iFunctionEnum = 4 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Fixed_Amount output  select @I_iFunctionEnum = 5 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Amount_per_Unit output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HR_FUNC_Benefit_Method]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[HR_FUNC_Benefit_Method] '  select @sqlstring1 =  'create function [dbo].[HR_FUNC_Benefit_Method] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @Percent_of_Gross_Wages + '''' +  ' when @iIntEnum = 2 then ''' + @Percent_of_Net_Wages + '''' +  ' when @iIntEnum = 3 then ''' + @Percent_of_Deduction + '''' +  ' when @iIntEnum = 4 then ''' + @Fixed_Amount + '''' +  ' when @iIntEnum = 5 then ''' + @Amount_per_Unit + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_HR_FUNC_Benefit_Method] TO [DYNGRP]
GO
