SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[LandedCostGroupID] AS select rtrim(['Inventory Landed Cost Group'].[Landed_Cost_Group_ID]) as 'Landed Cost Group ID', rtrim(['Inventory Landed Cost Group'].[Long_Description]) as 'Description', rtrim(['Inventory Landed Cost Group Details'].[Landed_Cost_ID]) as 'Landed Cost ID',  (select rtrim([ACTNUMST]) from [GL00105] as ['Account Index Master'] where ['Account Index Master'].[ACTINDX] = ['Inventory Landed Cost'].[ACPURIDX]) as 'Accrued Purchases Account', 'Cost Calculation Method' = dbo.DYN_FUNC_Cost_Calculation_Method(['Inventory Landed Cost'].[CALCMTHD]), 'Currency Decimals' = dbo.DYN_FUNC_Currency_Decimals(['Inventory Landed Cost'].[ODECPLCU]), rtrim(['Inventory Landed Cost'].[CURNCYID]) as 'Currency ID', 'Functional Currency Decimals' = dbo.DYN_FUNC_Functional_Currency_Decimals(['Inventory Landed Cost'].[DECPLCUR]), 'Invoice Match' = dbo.DYN_FUNC_Boolean_All(['Inventory Landed Cost'].[Invoice_Match]), rtrim(['Inventory Landed Cost'].[Long_Description]) as 'Landed Cost Description', (select rtrim([ACTNUMST]) from [GL00105] as ['Account Index Master'] where ['Account Index Master'].[ACTINDX] = ['Inventory Landed Cost'].[PURPVIDX]) as 'Purchase Price Variance Account', rtrim(['Inventory Landed Cost'].[RATETPID]) as 'Rate Type ID', 'Revalue Inventory for Cost Variance' = dbo.DYN_FUNC_Boolean_All(['Inventory Landed Cost'].[Revalue_Inventory]), ['Inventory Landed Cost'].[Tolerance_Percentage] as 'Tolerance Percentage', rtrim(['Inventory Landed Cost'].[VENDORID]) as 'Vendor ID', ['Inventory Landed Cost'].[Orig_Landed_Cost_Amount] as 'Originating Amount', ['Inventory Landed Cost'].[Calculation_Percentage]/1000 as 'Originating Percent',  'Accrued Purchases Account For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppAccountIndex(1,['Inventory Landed Cost'].[ACPURIDX] ), 'Purchase Price Variance Account For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppAccountIndex(1,['Inventory Landed Cost'].[PURPVIDX] ), 'Vendor ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppVendorID(1,['Inventory Landed Cost'].[VENDORID] )          from [IV41101] as ['Inventory Landed Cost Group'] with (NOLOCK) left outer join [IV41102] as ['Inventory Landed Cost Group Details'] with (NOLOCK) on ['Inventory Landed Cost Group'].[Landed_Cost_Group_ID] = ['Inventory Landed Cost Group Details'].[Landed_Cost_Group_ID] left outer join [IV41100] as ['Inventory Landed Cost'] with (NOLOCK) on ['Inventory Landed Cost Group Details'].[Landed_Cost_ID] = ['Inventory Landed Cost'].[Landed_Cost_ID] 
GO
GRANT SELECT ON  [dbo].[LandedCostGroupID] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[LandedCostGroupID] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[LandedCostGroupID] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[LandedCostGroupID] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[LandedCostGroupID] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[LandedCostGroupID] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[LandedCostGroupID] TO [rpt_purchasing manager]
GO
