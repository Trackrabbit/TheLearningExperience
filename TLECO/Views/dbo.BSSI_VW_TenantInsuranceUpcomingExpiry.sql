SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
/*05May2015	SAG	To create BSSI_VW_TenantInsuranceUpcomingExpiry view*/CREATE VIEW [dbo].[BSSI_VW_TenantInsuranceUpcomingExpiry]ASSELECT  	[B4602200].[BSSI_Tenant_Lease_Number] AS 'Lease Number',	[B4602200].[NAME] AS 'Name',	[B4602200].[CUSTNMBR] AS 'Tenant Number',	[B4602200].[CUSTNAME] AS 'Tenant Name',	[B4602200].[BSSI_PortfolioID] AS 'Building ID',	[B4602200].[BSSI_Description1] AS 'Building Name',	[B4602200].[LOCNCODE] AS 'Site ID',	[B4602200].[LOCNDSCR] AS 'Site Name',	[B4602206].[BSSI_Insurance_Type_ID] AS 'Insurance Type',	[B4602206].[BSSI_Insurer] AS 'Insurer',	[B4602206].[BSSI_Commencement_Date] AS 'Start Date',	[B4602206].[BSSI_Termination_Date] AS 'End Date',	(DateDiff(DD,getdate(),[B4602206].[BSSI_Termination_Date])) AS 'Remaining Days',	[B4602206].LNITMSEQ AS 'Line Number',	[B4602200].BSSI_Facility_ID AS 'BSSI_Facility_ID'  FROM [B4602206]INNER JOIN [B4602200] ON [B4602206].[BSSI_Tenant_Lease_Number] = [B4602200].[BSSI_Tenant_Lease_Number] WHERE [B4602200].BSSI_Tenant_Lease_Status = 2 and (DateDiff(DD,getdate(),[B4602206].[BSSI_Termination_Date])) >= 0
GO
GRANT SELECT ON  [dbo].[BSSI_VW_TenantInsuranceUpcomingExpiry] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BSSI_VW_TenantInsuranceUpcomingExpiry] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BSSI_VW_TenantInsuranceUpcomingExpiry] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BSSI_VW_TenantInsuranceUpcomingExpiry] TO [DYNGRP]
GO
