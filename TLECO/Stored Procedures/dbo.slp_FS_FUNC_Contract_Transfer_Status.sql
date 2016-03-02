SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_FS_FUNC_Contract_Transfer_Status] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Not_Transferred varchar(255),  @Transferred varchar(255),  @Auto_Renewed varchar(255)  select @I_iDictID = 949 select @I_sFunctionName = 'FS_FUNC_Contract_Transfer_Status' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Not_Transferred output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Transferred output  select @I_iFunctionEnum = 3 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Auto_Renewed output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[FS_FUNC_Contract_Transfer_Status]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[FS_FUNC_Contract_Transfer_Status] '  select @sqlstring1 =  'create function [dbo].[FS_FUNC_Contract_Transfer_Status] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @Not_Transferred + '''' +  ' when @iIntEnum = 2 then ''' + @Transferred + '''' +  ' when @iIntEnum = 3 then ''' + @Auto_Renewed + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_FS_FUNC_Contract_Transfer_Status] TO [DYNGRP]
GO