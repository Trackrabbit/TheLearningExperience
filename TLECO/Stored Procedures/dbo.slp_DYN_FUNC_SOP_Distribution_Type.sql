SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_DYN_FUNC_SOP_Distribution_Type] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @SALES varchar(255),  @RECV varchar(255),  @CASH varchar(255),  @TAKEN varchar(255),  @AVAIL varchar(255),  @TRADE varchar(255),  @FREIGHT varchar(255),  @MISC varchar(255),  @TAXES varchar(255),  @MARK varchar(255),  @COMMEXP varchar(255),  @COMMPAY varchar(255),  @OTHER varchar(255),  @COGS varchar(255),  @INV varchar(255),  @RETURNSv varchar(255),  @IN_USE varchar(255),  @IN_SERVICE varchar(255),  @DAMAGED varchar(255),  @UNIT varchar(255),  @DEPOSITS varchar(255),  @ROUND varchar(255),  @REBATE varchar(255)  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @SALES output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @RECV output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 3 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @CASH output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 4 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @TAKEN output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 5 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @AVAIL output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 6 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @TRADE output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 7 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @FREIGHT output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 8 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @MISC output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 9 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @TAXES output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 10 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @MARK output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 11 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @COMMEXP output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 12 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @COMMPAY output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 13 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @OTHER output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 14 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @COGS output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 15 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @INV output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 16 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @RETURNSv output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 17 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @IN_USE output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 18 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @IN_SERVICE output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 19 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @DAMAGED output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 20 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @UNIT output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 21 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @DEPOSITS output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 22 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @ROUND output  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_SOP_Distribution_Type' select @I_iFunctionEnum = 23 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @REBATE output   select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DYN_FUNC_SOP_Distribution_Type]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[DYN_FUNC_SOP_Distribution_Type] '  select @sqlstring1 =  'create function [dbo].[DYN_FUNC_SOP_Distribution_Type] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @SALES + '''' + ' when @iIntEnum = 2 then ''' + @RECV + '''' + ' when @iIntEnum = 3 then ''' + @CASH + '''' + ' when @iIntEnum = 4 then ''' + @TAKEN + '''' + ' when @iIntEnum = 5 then ''' + @AVAIL + '''' + ' when @iIntEnum = 6 then ''' + @TRADE + '''' + ' when @iIntEnum = 7 then ''' + @FREIGHT + '''' + ' when @iIntEnum = 8 then ''' + @MISC + '''' + ' when @iIntEnum = 9 then ''' + @TAXES + '''' + ' when @iIntEnum = 10 then ''' + @MARK + '''' + ' when @iIntEnum = 11 then ''' + @COMMEXP + '''' + ' when @iIntEnum = 12 then ''' + @COMMPAY + '''' + ' when @iIntEnum = 13 then ''' + @OTHER + '''' + ' when @iIntEnum = 14 then ''' + @COGS + '''' + ' when @iIntEnum = 15 then ''' + @INV + '''' + ' when @iIntEnum = 16 then ''' + @RETURNSv + '''' + ' when @iIntEnum = 17 then ''' + @IN_USE + '''' + ' when @iIntEnum = 18 then ''' + @IN_SERVICE + '''' + ' when @iIntEnum = 19 then ''' + @DAMAGED + '''' + ' when @iIntEnum = 20 then ''' + @UNIT + '''' + ' when @iIntEnum = 21 then ''' + @DEPOSITS + '''' + ' when @iIntEnum = 22 then ''' + @ROUND + '''' + ' when @iIntEnum = 23 then ''' + @REBATE + '''' + ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_DYN_FUNC_SOP_Distribution_Type] TO [DYNGRP]
GO