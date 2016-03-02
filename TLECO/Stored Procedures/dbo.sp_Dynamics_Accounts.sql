SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sp_Dynamics_Accounts] @iLanguageID int  as  set nocount on   declare @sqldropstring varchar(400),  @sqldefaultstring varchar(8000),  @sqlstring1 varchar(8000),  @sqlstring2 varchar(8000),  @sqlstring3 varchar(8000),  @sqlstring4 varchar(8000),  @sqlstring5 varchar(8000),  @sqlstring6 varchar(8000),  @sqlstring7 varchar(8000),  @sqlstring8 varchar(8000),  @sqlstring9 varchar(8000),  @sqlstring10 varchar(8000),  @sqljoinstring varchar(8000),  @sqlaccessstring varchar(2000),  @tNumberSegments int,  @tSegment int,  @I_iDictID int,  @I_iLangID int,  @I_iMessageNumber int,  @I_iAliasMessageNumber int,  @I_iIntegerValue int,  @Account_Index varchar(255), @Account_Number varchar(255), @Account_Alias varchar(255), @Main_Account_Segment varchar(255), @Segment1 varchar(255), @Segment2 varchar(255), @Segment3 varchar(255), @Account_Type varchar(255), @Account_Description varchar(255), @Posting_Type varchar(255), @Account_Category_Number varchar(255), @Active varchar(255), @Typical_Balance varchar(255), @Decimal_Places varchar(255), @Fixed_Or_Variable varchar(255), @Balance_For_Calculation varchar(255), @Conversion_Method varchar(255), @Historical_Rate varchar(255), @Note_Index varchar(255), @Created_Date varchar(255), @Modified_Date varchar(255), @User_Defined_1 varchar(255), @User_Defined_2 varchar(255), @Post_Sales_In varchar(255), @Post_Inventory_In varchar(255), @Post_Purchasing_In varchar(255), @Post_Payroll_In varchar(255), @Adjust_for_Inflation varchar(255), @Inflation_Equity_Account_Index varchar(255), @Inflation_Revenue_Account_Index varchar(255), @User_Defined_String_1 varchar(255), @User_Defined_String_2 varchar(255), @Allow_Account_Entry varchar(255), @Segments varchar(255), @DrillBack_Base_Url varchar(255), @Account_Index_For_DrillBack varchar(255), @ClearBalance varchar(255)  select @DrillBack_Base_Url = DYNAMICS.dbo.createBaseDrillBackUrlString(DB_NAME(),0)  select @I_iDictID = 1493 select @I_iMessageNumber = 22500 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Account_Index output  select @I_iDictID = 1493 select @I_iMessageNumber = 22501 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Account_Number output  select @I_iDictID = 1493 select @I_iMessageNumber = 22502 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Account_Alias output  select @I_iDictID = 1493 select @I_iMessageNumber = 22503 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Main_Account_Segment output  select @I_iDictID = 1493 select @I_iMessageNumber = 22529 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Segment1 output  select @I_iDictID = 1493 select @I_iMessageNumber = 22530 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Segment2 output  select @I_iDictID = 1493 select @I_iMessageNumber = 22531 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Segment3 output  select @I_iDictID = 1493 select @I_iMessageNumber = 22504 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Account_Type output  select @I_iDictID = 1493 select @I_iMessageNumber = 22505 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Account_Description output  select @I_iDictID = 1493 select @I_iMessageNumber = 22506 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Posting_Type output  select @I_iDictID = 1493 select @I_iMessageNumber = 22507 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Account_Category_Number output  select @I_iDictID = 1493 select @I_iMessageNumber = 22508 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Active output  select @I_iDictID = 1493 select @I_iMessageNumber = 22509 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Typical_Balance output  select @I_iDictID = 1493 select @I_iMessageNumber = 22510 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Decimal_Places output  select @I_iDictID = 1493 select @I_iMessageNumber = 22511 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Fixed_Or_Variable output  select @I_iDictID = 1493 select @I_iMessageNumber = 22512 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Balance_For_Calculation output  select @I_iDictID = 1493 select @I_iMessageNumber = 22514 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Conversion_Method output  select @I_iDictID = 1493 select @I_iMessageNumber = 22515 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Historical_Rate output  select @I_iDictID = 1493 select @I_iMessageNumber = 22516 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Note_Index output  select @I_iDictID = 1493 select @I_iMessageNumber = 22517 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Created_Date output  select @I_iDictID = 1493 select @I_iMessageNumber = 22518 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Modified_Date output  select @I_iDictID = 1493 select @I_iMessageNumber = 22519 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_1 output  select @I_iDictID = 1493 select @I_iMessageNumber = 22520 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_2 output  select @I_iDictID = 1493 select @I_iMessageNumber = 22521 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Post_Sales_In output  select @I_iDictID = 1493 select @I_iMessageNumber = 22522 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Post_Inventory_In output  select @I_iDictID = 1493 select @I_iMessageNumber = 22523 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Post_Purchasing_In output  select @I_iDictID = 1493 select @I_iMessageNumber = 22524 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Post_Payroll_In output  select @I_iDictID = 1493 select @I_iMessageNumber = 22525 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Adjust_for_Inflation output  select @I_iDictID = 1493 select @I_iMessageNumber = 22526 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Inflation_Equity_Account_Index output  select @I_iDictID = 1493 select @I_iMessageNumber = 22527 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Inflation_Revenue_Account_Index output  select @I_iDictID = 1493 select @I_iMessageNumber = 23250 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_String_1 output  select @I_iDictID = 1493 select @I_iMessageNumber = 23251 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @User_Defined_String_2 output  select @I_iDictID = 1493 select @I_iMessageNumber = 23252 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Allow_Account_Entry output  select @I_iDictID = 0 select @I_iMessageNumber = 22021 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Segments output   select @I_iDictID = 1493 select @I_iMessageNumber = 22500 select @I_iAliasMessageNumber = 22214 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @Account_Index_For_DrillBack output   select @I_iDictID = 0 select @I_iMessageNumber = 22227 select @I_iAliasMessageNumber = 0 exec DYNAMICS..smGetBIMsgString  @I_iMessageNumber, @I_iAliasMessageNumber, @I_iDictID, @iLanguageID, @ClearBalance output   select @sqldropstring =   'if exists (select * from dbo.sysobjects where id = object_id(N''[dbo].[Accounts]'') and OBJECTPROPERTY(id, N''IsView'') = 1) ' +  'drop view [dbo].[Accounts] '  select @sqldefaultstring =   'CREATE VIEW Accounts AS ' +   'select ' +   '(select rtrim([ACTNUMST]) from [GL00105] as [''Account Index Master''] where [''Account Index Master''].[ACTINDX] = [''Account Master''].[ACTINDX]) as ''' + @Account_Number + ''', ' + 'rtrim([''Account Master''].[ACTDESCR]) as ''' + @Account_Description + ''', ' + '''' + @Posting_Type + ''' = dbo.DYN_FUNC_Posting_Type([''Account Master''].[PSTNGTYP]), ' + '''' + @Account_Category_Number + ''' = dbo.DYN_FUNC_Account_Category_Number([''Account Master''].[ACCATNUM]), '   select @sqlstring1 =   'rtrim([''Account Master''].[ACTALIAS]) as ''' + @Account_Alias + ''', ' +  '[''Account Master''].[ACTINDX] as ''' + @Account_Index + ''', ' +  '''' + @Account_Type + ''' = dbo.DYN_FUNC_Account_Type([''Account Master''].[ACCTTYPE]), ' +  '''' + @Active + ''' = dbo.DYN_FUNC_Boolean_All([''Account Master''].[ACTIVE]), ' +  '''' + @Adjust_for_Inflation + ''' = dbo.DYN_FUNC_Boolean_All([''Account Master''].[ADJINFL]), ' +  '''' + @Allow_Account_Entry + ''' = dbo.DYN_FUNC_Boolean_All([''Account Master''].[ACCTENTR]), ' +  '''' + @Balance_For_Calculation + ''' = dbo.DYN_FUNC_Balance_For_Calculation([''Account Master''].[BALFRCLC]), ' +  '''' + @Conversion_Method + ''' = dbo.DYN_FUNC_Conversion_Method([''Account Master''].[CNVRMTHD]), ' +  '[''Account Master''].[CREATDDT] as ''' + @Created_Date + ''', ' +  '''' + @Decimal_Places + ''' = dbo.DYN_FUNC_Decimal_Places_QTYS([''Account Master''].[DECPLACS]), ' +  '''' + @Fixed_Or_Variable + ''' = dbo.DYN_FUNC_Fixed_Or_Variable([''Account Master''].[FXDORVAR]), ' +  '[''Account Master''].[HSTRCLRT] as ''' + @Historical_Rate + ''', ' +  '[''Account Master''].[INFLAEQU] as ''' + @Inflation_Equity_Account_Index + ''', ' +  '[''Account Master''].[INFLAREV] as ''' + @Inflation_Revenue_Account_Index + ''', ' +  'rtrim([''Account Master''].[MNACSGMT]) as ''' + @Main_Account_Segment + ''', ' +  '[''Account Master''].[MODIFDT] as ''' + @Modified_Date + ''', ' +  '[''Account Master''].[NOTEINDX] as ''' + @Note_Index + ''', ' +  '''' + @Post_Inventory_In + ''' = dbo.DYN_FUNC_Post_Inventory_In([''Account Master''].[PostIvIn]), ' +  '''' + @Post_Payroll_In + ''' = dbo.DYN_FUNC_Post_Payroll_In([''Account Master''].[PostPRIn]), ' +  '''' + @Post_Purchasing_In + ''' = dbo.DYN_FUNC_Post_Purchasing_In([''Account Master''].[PostPurchIn]), ' +  '''' + @Post_Sales_In + ''' = dbo.DYN_FUNC_Post_Sales_In([''Account Master''].[PostSlsIn]), '  select @tNumberSegments = count(SGMTNUMB) from SY00300  select @tSegment = 1  while @tSegment <= @tNumberSegments  begin  select @sqlstring1 = @sqlstring1 + '[''Account Master''].[ACTNUMBR_' + RTRIM(CAST(@tSegment as char(2))) + '] as ''Segment' + RTRIM(CAST(@tSegment as char(2))) +''', '  select @tSegment = @tSegment + 1  end  select @sqlstring1 = @sqlstring1 +  '''' + @Typical_Balance + ''' = dbo.DYN_FUNC_Typical_Balance([''Account Master''].[TPCLBLNC]), ' +  'rtrim([''Account Master''].[USERDEF1]) as ''' + @User_Defined_1 + ''', ' +  'rtrim([''Account Master''].[USERDEF2]) as ''' + @User_Defined_2 + ''', ' +  'rtrim([''Account Master''].[USRDEFS1]) as ''' + @User_Defined_String_1 + ''', ' +  'rtrim([''Account Master''].[USRDEFS2]) as ''' + @User_Defined_String_2 + ''', '   select @sqlstring2 = '''' + CAST(@tNumberSegments as varchar(3)) + ''' as ''' + @Segments + ''', ' + '''' + @ClearBalance + ''' = dbo.DYN_FUNC_Boolean_All([''Account Master''].[Clear_Balance]), ' + '''' + @Account_Index_For_DrillBack + ''' = ''' + @DrillBack_Base_Url + ''' +dbo.dgppAccountIndex(1,[''Account Master''].[ACTINDX] ) '  select @sqljoinstring =   'from [GL00100] as [''Account Master''] with (NOLOCK) '   select @sqlaccessstring = ''  if CONVERT(char(20), SERVERPROPERTY('productversion')) not like '8.00.%'  select @sqlaccessstring = 'GRANT ALTER ON [dbo].[Accounts] TO [DYNGRP]'   select @sqlaccessstring = @sqlaccessstring +  'GRANT SELECT ON [dbo].[Accounts] TO [rpt_warehouse manager]' + 'GRANT SELECT ON [dbo].[Accounts] TO [rpt_materials manager]' + 'GRANT SELECT ON [dbo].[Accounts] TO [rpt_operations manager]' + 'GRANT SELECT ON [dbo].[Accounts] TO [rpt_production manager]' + 'GRANT SELECT ON [dbo].[Accounts] TO [rpt_accounting manager]' + 'GRANT SELECT ON [dbo].[Accounts] TO [rpt_order processor]' + 'GRANT SELECT ON [dbo].[Accounts] TO [rpt_bookkeeper]' + 'GRANT SELECT ON [dbo].[Accounts] TO [rpt_executive]' + 'GRANT SELECT ON [dbo].[Accounts] TO [rpt_certified accountant]'   exec (@sqldropstring)  exec (@sqldefaultstring+' '+@sqlstring1+' '+@sqlstring2+' '+@sqlstring3+' '+@sqlstring4+' '+@sqlstring5+' '+@sqlstring6+' '+@sqlstring7+' '+@sqlstring8+' '+@sqlstring9+' '+@sqlstring10+' '+@sqljoinstring)  exec (@sqlaccessstring)   set nocount off    
GO
GRANT EXECUTE ON  [dbo].[sp_Dynamics_Accounts] TO [DYNGRP]
GO
