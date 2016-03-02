SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
/*05May2015	SAG	To create BSSI_VW_TenantUpcomingCurrentExpiry view*/CREATE VIEW [dbo].[BSSI_VW_TenantUpcomingCurrentExpiry]AS	SELECT 	[B4602200].[BSSI_Tenant_Lease_Number] AS 'Lease Number',	[B4602200].[NAME] AS 'Name',	[B4602200].[CUSTNMBR] AS 'Tenant Number',	[B4602200].[CUSTNAME] AS 'Tenant Name',	[B4602200].[BSSI_PortfolioID] AS 'Building ID',	[B4602200].[BSSI_Description1] AS 'Building Name',	[B4602200].[LOCNCODE] AS 'Site ID',	[B4602200].[LOCNDSCR] AS 'Site Name',	[B4602210].[BSSI_Notice_Deadline] AS 'Notice Date',	[B4602210].[BSSI_Period_End] AS 'Expiry date',	(DateDiff(DD,getdate(),[B4602210].[BSSI_Period_End])) AS 'Remaining Days',	[B4602210].LNITMSEQ AS 'Line Number',	[B4602200].BSSI_Facility_ID AS 'BSSI_Facility_ID' FROM [B4602200]INNER JOIN [B4602210] ON [B4602200].[BSSI_Tenant_Lease_Number] = [B4602210].[BSSI_Tenant_Lease_Number] WHERE [B4602200].BSSI_Tenant_Lease_Status = 2 AND (DateDiff(DD,getdate(),[B4602210].[BSSI_Period_End])) >= 0
GO
GRANT SELECT ON  [dbo].[BSSI_VW_TenantUpcomingCurrentExpiry] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BSSI_VW_TenantUpcomingCurrentExpiry] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BSSI_VW_TenantUpcomingCurrentExpiry] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BSSI_VW_TenantUpcomingCurrentExpiry] TO [DYNGRP]
GO
