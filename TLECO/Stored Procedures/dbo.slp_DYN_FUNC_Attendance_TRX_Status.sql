SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_DYN_FUNC_Attendance_TRX_Status] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(400),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Posted varchar(255), @Processing varchar(255), @Processed varchar(255), @Voided varchar(255), @Accrual varchar(255), @Auto_Accrual varchar(255)  select @I_iDictID = 0 select @I_sFunctionName = 'DYN_FUNC_Attendance_TRX_Status' select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Posted output select @I_iFunctionEnum = 2 exec DYNAMICS..smGetBIEnumString @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Processing output select @I_iFunctionEnum = 3 exec DYNAMICS..smGetBIEnumString @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Processed output select @I_iFunctionEnum = 4 exec DYNAMICS..smGetBIEnumString @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Voided output select @I_iFunctionEnum = 5 exec DYNAMICS..smGetBIEnumString @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Accrual output select @I_iFunctionEnum = 6 exec DYNAMICS..smGetBIEnumString @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Auto_Accrual output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[DYN_FUNC_Attendance_TRX_Status]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[DYN_FUNC_Attendance_TRX_Status] '  select @sqlstring1 =  'create function [dbo].[DYN_FUNC_Attendance_TRX_Status] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 1 then ''' + @Posted + '''' +  ' when @iIntEnum = 2 then ''' + @Processing + '''' +  ' when @iIntEnum = 3 then ''' + @Processed + '''' +  ' when @iIntEnum = 4 then ''' + @Voided + '''' +  ' when @iIntEnum = 5 then ''' + @Accrual + '''' +  ' when @iIntEnum = 6 then ''' + @Auto_Accrual + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_DYN_FUNC_Attendance_TRX_Status] TO [DYNGRP]
GO
