SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
/*05May2015	SAG	To create BSSI_VW_ExpenseUpcomingCurrentExpiry view*/CREATE VIEW [dbo].[BSSI_VW_ExpenseUpcomingCurrentExpiry]ASSELECT 	[B4602900].[BSSI_Ground_Lease_Number] AS 'Lease Number',	[B4602900].[NAME] AS 'Name',	[B4602900].[VENDORID] AS 'Landlord Number',	[B4602900].[VENDNAME] AS 'Landlord Name',	[B4602900].[BSSI_PortfolioID] AS 'Building ID',	[B4602900].[BSSI_Description1] AS 'Building Name',	[B4602900].[LOCNCODE] AS 'Site ID',	[B4602900].[LOCNDSCR] AS 'Site Name',	[B4602910].[BSSI_Notice_Deadline] AS 'Notice Date',	[B4602910].[BSSI_Period_End] AS 'Expiry date',	(DateDiff(DD,getdate(),[B4602910].[BSSI_Period_End])) AS 'Remaining Days',	[B4602910].LNITMSEQ AS 'Line Number',	[B4602900].BSSI_Facility_ID AS 'BSSI_Facility_ID'  FROM [B4602900]INNER JOIN [B4602910] ON [B4602900].[BSSI_Ground_Lease_Number] = [B4602910].[BSSI_Ground_Lease_Number] WHERE [B4602900].BSSI_Tenant_Lease_Status = 2 AND (DateDiff(DD,getdate(),[B4602910].[BSSI_Period_End]))  >= 0
GO
GRANT SELECT ON  [dbo].[BSSI_VW_ExpenseUpcomingCurrentExpiry] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BSSI_VW_ExpenseUpcomingCurrentExpiry] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BSSI_VW_ExpenseUpcomingCurrentExpiry] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BSSI_VW_ExpenseUpcomingCurrentExpiry] TO [DYNGRP]
GO
