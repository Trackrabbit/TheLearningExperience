SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_DYN_FUNC_Allocate_By] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Line_Item varchar(255),  @DocumentBatch varchar(255)  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_Allocate_By' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Line_Item output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @DocumentBatch output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DYN_FUNC_Allocate_By]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[DYN_FUNC_Allocate_By] '  select @sqlstring1 =  'create function [dbo].[DYN_FUNC_Allocate_By] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @Line_Item + '''' +  ' when @iIntEnum = 2 then ''' + @DocumentBatch + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_DYN_FUNC_Allocate_By] TO [DYNGRP]
GO
