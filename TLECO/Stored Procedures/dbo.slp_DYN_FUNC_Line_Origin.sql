SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_DYN_FUNC_Line_Origin] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Manual varchar(255),  @e_Req varchar(255),  @SOP varchar(255),  @MRP varchar(255),  @SMS_CL varchar(255),  @SMS_RT varchar(255),  @SMS_DP varchar(255),  @MOP varchar(255),  @PO_Gen varchar(255)  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_Line_Origin' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Manual output  select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @e_Req output  select @I_iFunctionEnum = 3 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @SOP output  select @I_iFunctionEnum = 4 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @MRP output  select @I_iFunctionEnum = 5 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @SMS_CL output  select @I_iFunctionEnum = 6 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @SMS_RT output  select @I_iFunctionEnum = 7 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @SMS_DP output  select @I_iFunctionEnum = 8 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @MOP output  select @I_iFunctionEnum = 9 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @PO_Gen output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DYN_FUNC_Line_Origin]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[DYN_FUNC_Line_Origin] '  select @sqlstring1 =  'create function [dbo].[DYN_FUNC_Line_Origin] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @Manual + '''' +  ' when @iIntEnum = 2 then ''' + @e_Req + '''' +  ' when @iIntEnum = 3 then ''' + @SOP + '''' +  ' when @iIntEnum = 4 then ''' + @MRP + '''' +  ' when @iIntEnum = 5 then ''' + @SMS_CL + '''' +  ' when @iIntEnum = 6 then ''' + @SMS_RT + '''' +  ' when @iIntEnum = 7 then ''' + @SMS_DP + '''' +  ' when @iIntEnum = 8 then ''' + @MOP + '''' +  ' when @iIntEnum = 9 then ''' + @PO_Gen + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_DYN_FUNC_Line_Origin] TO [DYNGRP]
GO