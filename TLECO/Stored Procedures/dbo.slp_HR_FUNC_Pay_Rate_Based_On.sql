SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[slp_HR_FUNC_Pay_Rate_Based_On] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlaccessstring varchar(1000),  @I_iDictID int, @I_sFunctionName varchar(100), @I_iFunctionEnum int, @Seat varchar(255),  @Employee_Pay_Code varchar(255)  select @I_iDictID =414 select @I_sFunctionName = 'HR_FUNC_Pay_Rate_Based_On' select @I_iFunctionEnum = 0 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Seat output  select @I_iFunctionEnum = 1 exec DYNAMICS..smGetBIEnumString  @I_iDictID, @iLanguageID, @I_sFunctionName, @I_iFunctionEnum, @Employee_Pay_Code output  select @sqldropstring =  'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[HR_FUNC_Pay_Rate_Based_On]'') and xtype in (N''FN'',N''IF'',N''TF'')) ' +  'drop function [dbo].[HR_FUNC_Pay_Rate_Based_On] '  select @sqlstring1 =  'create function [dbo].[HR_FUNC_Pay_Rate_Based_On] (@iIntEnum integer) returns varchar(100) ' +  'as  '+ 'begin  '+ 'declare @oVarcharValuestring varchar(100) ' + 'set @oVarcharValuestring = ' + 'case ' +  ' when @iIntEnum = 0 then ''' + @Seat + '''' +  ' when @iIntEnum = 1 then ''' + @Employee_Pay_Code + '''' +  ' else '''' ' +  ' end ' +  ' RETURN(@oVarcharValuestring) ' +  ' END '  exec (@sqldropstring)  exec (@sqlstring1+' '+@sqlstring2)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[slp_HR_FUNC_Pay_Rate_Based_On] TO [DYNGRP]
GO
