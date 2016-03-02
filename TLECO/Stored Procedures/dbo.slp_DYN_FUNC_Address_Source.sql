SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_DYN_FUNC_Address_Source] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @None varchar(255),  @Ship_To varchar(255),  @Purchasing varchar(255),  @Site varchar(255), @Company varchar(255) select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_Address_Source' select @I_iFunctionEnum = 0 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @None output  select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Ship_To output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Purchasing output  select @I_iFunctionEnum = 3 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Site output  select @I_iFunctionEnum = 4 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Company output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DYN_FUNC_Address_Source]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[DYN_FUNC_Address_Source] '  select @sqlstring1 =  'create function [dbo].[DYN_FUNC_Address_Source] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 0 then ''' + @None + '''' +  ' when @iIntEnum = 1 then ''' + @Ship_To + '''' +  ' when @iIntEnum = 2 then ''' + @Purchasing + '''' +  ' when @iIntEnum = 3 then ''' + @Site + '''' +  ' when @iIntEnum = 4 then ''' + @Company + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_DYN_FUNC_Address_Source] TO [DYNGRP]
GO
