SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_FA_FUNC_Switchover] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @No_Switch varchar(255),  @Straight_Line varchar(255)  select @I_iDictID = 309 select @I_sFunctionName = 'FA_FUNC_Switchover' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @No_Switch output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Straight_Line output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[FA_FUNC_Switchover]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[FA_FUNC_Switchover] '  select @sqlstring1 =  'create function [dbo].[FA_FUNC_Switchover] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @No_Switch + '''' +  ' when @iIntEnum = 2 then ''' + @Straight_Line + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_FA_FUNC_Switchover] TO [DYNGRP]
GO
