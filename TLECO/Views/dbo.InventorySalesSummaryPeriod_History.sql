SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[InventorySalesSummaryPeriod_History] AS select 'Summary Type' = dbo.DYN_FUNC_Summary_Type(['InventorySalesSummaryPeriod_History'].[SMRYTYPE]), rtrim(['InventorySalesSummaryPeriod_History'].[ITEMNMBR]) as 'Item Number', rtrim(['InventorySalesSummaryPeriod_History'].[LOCNCODE]) as 'Location Code', ['InventorySalesSummaryPeriod_History'].[YEAR1] as 'Year', ['InventorySalesSummaryPeriod_History'].[SMRYPMTH] as 'Summary Prd/Mth', ['InventorySalesSummaryPeriod_History'].[SMRYCOST] as 'Summary Costs', ['InventorySalesSummaryPeriod_History'].[SMRYQTYS] as 'Summary QTYS', ['InventorySalesSummaryPeriod_History'].[SMRYSALS] as 'Summary Sales', rtrim(['Item Master'].[ITEMDESC]) as 'Item Description', 'Item Number For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppItemID(1,['InventorySalesSummaryPeriod_History'].[ITEMNMBR],['InventorySalesSummaryPeriod_History'].[LOCNCODE] ) from [IV30102] as ['InventorySalesSummaryPeriod_History'] with (NOLOCK) left outer join [IV00101] as ['Item Master'] with (NOLOCK) on ['Item Master'].[ITEMNMBR] = ['InventorySalesSummaryPeriod_History'].[ITEMNMBR]                      
GO
GRANT SELECT ON  [dbo].[InventorySalesSummaryPeriod_History] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[InventorySalesSummaryPeriod_History] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[InventorySalesSummaryPeriod_History] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[InventorySalesSummaryPeriod_History] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[InventorySalesSummaryPeriod_History] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[InventorySalesSummaryPeriod_History] TO [rpt_materials manager]
GO
GRANT SELECT ON  [dbo].[InventorySalesSummaryPeriod_History] TO [rpt_operations manager]
GO
GRANT SELECT ON  [dbo].[InventorySalesSummaryPeriod_History] TO [rpt_production manager]
GO
GRANT SELECT ON  [dbo].[InventorySalesSummaryPeriod_History] TO [rpt_warehouse manager]
GO
