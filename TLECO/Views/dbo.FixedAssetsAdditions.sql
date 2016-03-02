SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[FixedAssetsAdditions] AS select ['Asset General Information Master'].[ASSETINDEX] as 'Asset Index', rtrim(['Asset General Information Master'].[ASSETDESC]) as 'Asset Description', rtrim(['Asset General Information Master'].[LOCATNID]) as 'Location ID', rtrim(['Asset General Information Master'].[ASSETCLASSID]) as 'Asset Class ID', ['Asset General Information Master'].[ASSETQTY] as 'Asset Quantity', 'Asset Type' = dbo.FA_FUNC_Asset_Type(['Asset General Information Master'].[ASSETTYPE]), 'Property Type' = dbo.FA_FUNC_Property_Type(['Asset General Information Master'].[PROPTYPE]), ['Asset General Information Master'].[ACQDATE] as 'Acquisition Date', 'Asset Status' = dbo.FA_FUNC_Asset_Status(['Asset General Information Master'].[ASSETSTATUS]), rtrim(['Asset General Information Master'].[ASSETID]) as 'Asset ID', ['Asset General Information Master'].[ASSETIDSUF] as 'Suf', rtrim(['Asset General Information Master'].[STRUCTUREID]) as 'Structure ID', rtrim(['Asset General Information Master'].[Asset_Label]) as 'Asset Label', rtrim(['Asset General Information Master'].[Physical_Location_ID]) as 'Physical Location ID', ['Asset Book Master'].[BOOKINDX] as 'Book Index', 'Depreciation Method' = dbo.FA_FUNC_Depreciation_Method(['Asset Book Master'].[DEPRECIATIONMETHOD]), 'Averaging Convention' = dbo.FA_FUNC_Averaging_Convention(['Asset Book Master'].[AVERAGINGCONV]), ['Asset Book Master'].[PLINSERVDATE] as 'Place in Service Date', ['Asset Book Master'].[ORIGINALLIFEDAYS] as 'Original Life Days', ['Asset Book Master'].[ORIGINALLIFEYEARS] as 'Original Life Years', ['Asset Book Master'].[REMAININGLIFEYEARS] as 'Remaining Life Years', ['Asset Book Master'].[REMAININGLIFEDAYS] as 'Remaining Life Days', ['Asset Book Master'].[SALVAGEVALUE] as 'Salvage Value', ['Asset Book Master'].[LTDDEPRAMT] as 'LTD Depreciation Amount', ['Asset Book Master'].[NETBOOKVALUE] as 'Net Book Value', ['Asset Book Master'].[COSTBASIS] as 'Cost Basis', ['Asset Book Master'].[COSTBFRETORDEL] as 'Cost Before Retire or Delete', rtrim(['Book Setup'].[BOOKID]) as 'Book ID', 'Amortization Code' = dbo.FA_FUNC_Amortization_Code(['Asset Book Master'].[AMORTIZATIONCODE]),  'Asset Index For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=309' +dbo.dgppAssetIndex(1,['Asset General Information Master'].[ASSETINDEX] )           from [FA00200] as ['Asset Book Master'] with (NOLOCK) left outer join [FA00100] as ['Asset General Information Master'] with (NOLOCK) on ['Asset Book Master'].[ASSETINDEX] = ['Asset General Information Master'].[ASSETINDEX] left outer join [FA40200] as ['Book Setup'] with (NOLOCK) on ['Asset Book Master'].[BOOKINDX] = ['Book Setup'].[BOOKINDX] 
GO
GRANT SELECT ON  [dbo].[FixedAssetsAdditions] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FixedAssetsAdditions] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FixedAssetsAdditions] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FixedAssetsAdditions] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[FixedAssetsAdditions] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[FixedAssetsAdditions] TO [rpt_executive]
GO
