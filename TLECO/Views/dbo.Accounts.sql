SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[Accounts] AS select (select rtrim([ACTNUMST]) from [GL00105] as ['Account Index Master'] where ['Account Index Master'].[ACTINDX] = ['Account Master'].[ACTINDX]) as 'Account Number', rtrim(['Account Master'].[ACTDESCR]) as 'Account Description', 'Posting Type' = dbo.DYN_FUNC_Posting_Type(['Account Master'].[PSTNGTYP]), 'Account Category Number' = dbo.DYN_FUNC_Account_Category_Number(['Account Master'].[ACCATNUM]),  rtrim(['Account Master'].[ACTALIAS]) as 'Account Alias', ['Account Master'].[ACTINDX] as 'Account Index', 'Account Type' = dbo.DYN_FUNC_Account_Type(['Account Master'].[ACCTTYPE]), 'Active' = dbo.DYN_FUNC_Boolean_All(['Account Master'].[ACTIVE]), 'Adjust for Inflation' = dbo.DYN_FUNC_Boolean_All(['Account Master'].[ADJINFL]), 'Allow Account Entry' = dbo.DYN_FUNC_Boolean_All(['Account Master'].[ACCTENTR]), 'Balance For Calculation' = dbo.DYN_FUNC_Balance_For_Calculation(['Account Master'].[BALFRCLC]), 'Conversion Method' = dbo.DYN_FUNC_Conversion_Method(['Account Master'].[CNVRMTHD]), ['Account Master'].[CREATDDT] as 'Created Date', 'Decimal Places' = dbo.DYN_FUNC_Decimal_Places_QTYS(['Account Master'].[DECPLACS]), 'Fixed Or Variable' = dbo.DYN_FUNC_Fixed_Or_Variable(['Account Master'].[FXDORVAR]), ['Account Master'].[HSTRCLRT] as 'Historical Rate', ['Account Master'].[INFLAEQU] as 'Inflation Equity Account Index', ['Account Master'].[INFLAREV] as 'Inflation Revenue Account Index', rtrim(['Account Master'].[MNACSGMT]) as 'Main Account Segment', ['Account Master'].[MODIFDT] as 'Modified Date', ['Account Master'].[NOTEINDX] as 'Note Index', 'Post Inventory In' = dbo.DYN_FUNC_Post_Inventory_In(['Account Master'].[PostIvIn]), 'Post Payroll In' = dbo.DYN_FUNC_Post_Payroll_In(['Account Master'].[PostPRIn]), 'Post Purchasing In' = dbo.DYN_FUNC_Post_Purchasing_In(['Account Master'].[PostPurchIn]), 'Post Sales In' = dbo.DYN_FUNC_Post_Sales_In(['Account Master'].[PostSlsIn]), ['Account Master'].[ACTNUMBR_1] as 'Segment1', ['Account Master'].[ACTNUMBR_2] as 'Segment2', ['Account Master'].[ACTNUMBR_3] as 'Segment3', ['Account Master'].[ACTNUMBR_4] as 'Segment4', 'Typical Balance' = dbo.DYN_FUNC_Typical_Balance(['Account Master'].[TPCLBLNC]), rtrim(['Account Master'].[USERDEF1]) as 'User Defined 1', rtrim(['Account Master'].[USERDEF2]) as 'User Defined 2', rtrim(['Account Master'].[USRDEFS1]) as 'User Defined String 1', rtrim(['Account Master'].[USRDEFS2]) as 'User Defined String 2',  '4' as 'Segments', 'Clear Balance' = dbo.DYN_FUNC_Boolean_All(['Account Master'].[Clear_Balance]), 'Account Index For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppAccountIndex(1,['Account Master'].[ACTINDX] )          from [GL00100] as ['Account Master'] with (NOLOCK) 
GO
GRANT ALTER ON  [dbo].[Accounts] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[Accounts] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[Accounts] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[Accounts] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[Accounts] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[Accounts] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[Accounts] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[Accounts] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[Accounts] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[Accounts] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[Accounts] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[Accounts] TO [rpt_order processor]
GO
GRANT SELECT ON  [dbo].[Accounts] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[Accounts] TO [rpt_warehouse manager]
GO
