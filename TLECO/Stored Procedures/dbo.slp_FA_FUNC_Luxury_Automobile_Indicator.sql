SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_FA_FUNC_Luxury_Automobile_Indicator] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @No varchar(255),  @Yes varchar(255)  select @I_iDictID = 309 select @I_sFunctionName = 'FA_FUNC_Luxury_Automobile_Indicator' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @No output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Yes output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[FA_FUNC_Luxury_Automobile_Indicator]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[FA_FUNC_Luxury_Automobile_Indicator] '  select @sqlstring1 =  'create function [dbo].[FA_FUNC_Luxury_Automobile_Indicator] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @No + '''' +  ' when @iIntEnum = 2 then ''' + @Yes + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_FA_FUNC_Luxury_Automobile_Indicator] TO [DYNGRP]
GO
