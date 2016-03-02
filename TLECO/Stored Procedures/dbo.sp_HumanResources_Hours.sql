SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sp_HumanResources_Hours] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqldefaultstring varchar(8000),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlstring3 varchar(8000),  @sqlstring4 varchar(8000),  @sqlstring5 varchar(8000),  @sqlstring6 varchar(8000),  @sqlstring7 varchar(8000),  @sqlstring8 varchar(8000),  @sqlstring9 varchar(8000),  @sqlstring10 varchar(8000),  @sqljoinstring varchar(8000),  @sqlaccessstring varchar(400),  @tNumberSegments int,  @tSegment int,  @I_iDictID int,  @I_iLangID int,  @I_iMessageNumber int,  @I_iAliasMessageNumber int,  @I_iIntegerValue int,   @Employee_ID varchar(255), @Employee_Name varchar(255), @Time_Code varchar(255), @Pay_Code varchar(255), @Hours_Available varchar(255), @Pay_Rate_Per_Hour varchar(255), @Liability varchar(255), @Primary_Pay_Code varchar(255), @Pay_Rate varchar(255), @Pay_Unit varchar(255), @Primary_Pay_Rate varchar(255), @Time_Available varchar(255), @TRX varchar(255), @Start_Date varchar(255), @Job_Title varchar(255), @Department varchar(255), @TRX_Date varchar(255), @TRX_Ending_Date varchar(255), @Hours varchar(255), @Accrual_Flag varchar(255), @Accrue_Time_Benefits varchar(255), @Posted varchar(255), @Attendance_Type varchar(255), @Attendance_Reason varchar(255), @Pay_Rate_Amount varchar(255)  select @I_iDictID = 414 select @I_iMessageNumber = 26600 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Employee_ID output   select @I_iDictID = 0 select @I_iMessageNumber = 22051 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Employee_Name output   select @I_iDictID = 0 select @I_iMessageNumber = 22064 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Time_Code output   select @I_iDictID = 414 select @I_iMessageNumber = 00002 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Pay_Code output   select @I_iDictID = 0 select @I_iMessageNumber = 22073 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Hours_Available output   select @I_iDictID = 414 select @I_iMessageNumber = 00003 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Pay_Rate_Per_Hour output   select @I_iDictID = 414 select @I_iMessageNumber = 00004 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Liability output   select @I_iDictID = 414 select @I_iMessageNumber = 00005 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Primary_Pay_Code output   select @I_iDictID = 414 select @I_iMessageNumber = 00006 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Pay_Rate output   select @I_iDictID = 414 select @I_iMessageNumber = 00007 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Pay_Unit output   select @I_iDictID = 414 select @I_iMessageNumber = 00008 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Primary_Pay_Rate output   select @I_iDictID = 414 select @I_iMessageNumber = 00009 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Time_Available output   select @I_iDictID = 0 select @I_iMessageNumber = 22065 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @TRX output   select @I_iDictID = 414 select @I_iMessageNumber = 26682 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Start_Date output   select @I_iDictID = 414 select @I_iMessageNumber = 26676 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Job_Title output   select @I_iDictID = 414 select @I_iMessageNumber = 26675 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Department output   select @I_iDictID = 414 select @I_iMessageNumber = 00011 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @TRX_Date output   select @I_iDictID = 414 select @I_iMessageNumber = 00012 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @TRX_Ending_Date output   select @I_iDictID = 0 select @I_iMessageNumber = 22063 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Hours output   select @I_iDictID = 0 select @I_iMessageNumber = 22076 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Accrual_Flag output   select @I_iDictID = 414 select @I_iMessageNumber = 00013 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Accrue_Time_Benefits output   select @I_iDictID = 414 select @I_iMessageNumber = 00014 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Posted output   select @I_iDictID = 0 select @I_iMessageNumber = 22066 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Attendance_Type output   select @I_iDictID = 0 select @I_iMessageNumber = 22067 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Attendance_Reason output   select @I_iDictID = 414 select @I_iMessageNumber = 00015 select @I_iAliasMessageNumber = 0  exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Pay_Rate_Amount output   select @sqldropstring =   'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[Hours]'') and OBJECTPROPERTY(id, N''IsView'') = 1) ' +  'drop view [dbo].[Hours] '  select @sqlstring1 =   'CREATE VIEW Hours AS ' +   'select ' +   '[''T2''].[EMPLOYID] as ''' + @Employee_ID + ''', ' +  'rtrim([''T2''].[LASTNAME]) + '', '' + rtrim([''T2''].[FRSTNAME]) as ''' + @Employee_Name + ''', ' + '[''T1''].[TIMECODE_I] as ''' + @Time_Code + ''', ' + 'convert(decimal(9,2),(convert(decimal(9,2), [''T1''].[HOURSAVAILABLE_I]) / 100)) as ''' + @Hours_Available + ''' '   select @sqljoinstring =  'from [TATM1030] as [''T1''] WITH (NOLOCK) ' + ' INNER JOIN [UPR00100] as [''T2''] WITH (NOLOCK) on [''T2''].[EMPLOYID] =  [''T1''].[EMPID_I] '  select @sqlaccessstring =   'GRANT SELECT ON [dbo].[Hours] TO [rpt_executive]' + 'GRANT SELECT ON [dbo].[Hours] TO [rpt_human resource administrator]'   exec (@sqldropstring)  exec (@sqldefaultstring+' '+@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10+' '+@sqljoinstring)  exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sp_HumanResources_Hours] TO [DYNGRP]
GO
