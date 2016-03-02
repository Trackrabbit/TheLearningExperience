SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_FS_FUNC_SVC_Liability_Type] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Straight_Line varchar(255),  @Block_Time varchar(255),  @Retainage varchar(255),  @Based_on_Calls varchar(255),  @Metered varchar(255)  select @I_iDictID = 949 select @I_sFunctionName = 'FS_FUNC_SVC_Liability_Type' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Straight_Line output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Block_Time output  select @I_iFunctionEnum = 3 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Retainage output  select @I_iFunctionEnum = 4 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Based_on_Calls output  select @I_iFunctionEnum = 5 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Metered output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[FS_FUNC_SVC_Liability_Type]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[FS_FUNC_SVC_Liability_Type] '  select @sqlstring1 =  'create function [dbo].[FS_FUNC_SVC_Liability_Type] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @Straight_Line + '''' +  ' when @iIntEnum = 2 then ''' + @Block_Time + '''' +  ' when @iIntEnum = 3 then ''' + @Retainage + '''' +  ' when @iIntEnum = 4 then ''' + @Based_on_Calls + '''' +  ' when @iIntEnum = 5 then ''' + @Metered + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_FS_FUNC_SVC_Liability_Type] TO [DYNGRP]
GO