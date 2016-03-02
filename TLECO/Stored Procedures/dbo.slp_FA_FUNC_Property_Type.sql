SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_FA_FUNC_Property_Type] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Personal varchar(255),  @Personal_Listed varchar(255),  @Real varchar(255),  @Real_Listed varchar(255),  @Real_Conservation varchar(255),  @Real_Energy varchar(255),  @Real_Farms varchar(255),  @Real_Low_Income_Housing varchar(255),  @Amortizable varchar(255)  select @I_iDictID = 309 select @I_sFunctionName = 'FA_FUNC_Property_Type' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Personal output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Personal_Listed output  select @I_iFunctionEnum = 3 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Real output  select @I_iFunctionEnum = 4 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Real_Listed output  select @I_iFunctionEnum = 5 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Real_Conservation output  select @I_iFunctionEnum = 6 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Real_Energy output  select @I_iFunctionEnum = 7 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Real_Farms output  select @I_iFunctionEnum = 8 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Real_Low_Income_Housing output  select @I_iFunctionEnum = 9 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Amortizable output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[FA_FUNC_Property_Type]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[FA_FUNC_Property_Type] '  select @sqlstring1 =  'create function [dbo].[FA_FUNC_Property_Type] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @Personal + '''' +  ' when @iIntEnum = 2 then ''' + @Personal_Listed + '''' +  ' when @iIntEnum = 3 then ''' + @Real + '''' +  ' when @iIntEnum = 4 then ''' + @Real_Listed + '''' +  ' when @iIntEnum = 5 then ''' + @Real_Conservation + '''' +  ' when @iIntEnum = 6 then ''' + @Real_Energy + '''' +  ' when @iIntEnum = 7 then ''' + @Real_Farms + '''' +  ' when @iIntEnum = 8 then ''' + @Real_Low_Income_Housing + '''' +  ' when @iIntEnum = 9 then ''' + @Amortizable + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_FA_FUNC_Property_Type] TO [DYNGRP]
GO
