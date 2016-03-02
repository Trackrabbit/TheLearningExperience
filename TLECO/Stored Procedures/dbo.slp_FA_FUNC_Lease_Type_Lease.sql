SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_FA_FUNC_Lease_Type_Lease] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Capital varchar(255),  @Operating varchar(255)  select @I_iDictID = 309 select @I_sFunctionName = 'FA_FUNC_Lease_Type_Lease' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Capital output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Operating output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[FA_FUNC_Lease_Type_Lease]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[FA_FUNC_Lease_Type_Lease] '  select @sqlstring1 =  'create function [dbo].[FA_FUNC_Lease_Type_Lease] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @Capital + '''' +  ' when @iIntEnum = 2 then ''' + @Operating + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_FA_FUNC_Lease_Type_Lease] TO [DYNGRP]
GO
