SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_FS_FUNC_Return_Record_Type] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Open varchar(255),  @Closed varchar(255)  select @I_iDictID = 949 select @I_sFunctionName = 'FS_FUNC_Return_Record_Type' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Open output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Closed output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[FS_FUNC_Return_Record_Type]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[FS_FUNC_Return_Record_Type] '  select @sqlstring1 =  'create function [dbo].[FS_FUNC_Return_Record_Type] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @Open + '''' +  ' when @iIntEnum = 2 then ''' + @Closed + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_FS_FUNC_Return_Record_Type] TO [DYNGRP]
GO
