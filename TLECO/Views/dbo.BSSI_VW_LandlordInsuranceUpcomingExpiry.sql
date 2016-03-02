SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
/*05May2015	SAG	To create BSSI_VW_LandlordInsuranceUpcomingExpiry view*/CREATE VIEW [dbo].[BSSI_VW_LandlordInsuranceUpcomingExpiry]ASSELECT  	[B4602900].[BSSI_Ground_Lease_Number] AS 'Lease Number',	[B4602900].[NAME] AS 'Name',	[B4602900].[VENDORID] AS 'Landlord Number',	[B4602900].[VENDNAME] AS 'Landlord Name',	[B4602900].[BSSI_PortfolioID] AS 'Building ID',	[B4602900].[BSSI_Description1] AS 'Building Name',	[B4602900].[LOCNCODE] AS 'Site ID',	[B4602900].[LOCNDSCR] AS 'Site Name',	[B4602906].[BSSI_Insurance_Type_ID] AS 'Insurance Type',	[B4602906].[BSSI_Insurer] AS 'Insurer',	[B4602906].[BSSI_Commencement_Date] AS 'Start Date',	[B4602906].[BSSI_Termination_Date] AS 'End Date',	(DateDiff(DD,getdate(),[B4602906].[BSSI_Termination_Date])) AS 'Remaining Days',	[B4602906].LNITMSEQ AS 'Line Number',	[B4602900].BSSI_Facility_ID AS 'BSSI_Facility_ID'FROM [B4602906]INNER JOIN [B4602900] on [B4602906].[BSSI_Ground_Lease_Number] = [B4602900].[BSSI_Ground_Lease_Number] WHERE[B4602900].BSSI_Tenant_Lease_Status = 2 AND (DateDiff(DD,getdate(),[B4602906].[BSSI_Termination_Date])) >= 0
GO
GRANT SELECT ON  [dbo].[BSSI_VW_LandlordInsuranceUpcomingExpiry] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BSSI_VW_LandlordInsuranceUpcomingExpiry] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BSSI_VW_LandlordInsuranceUpcomingExpiry] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BSSI_VW_LandlordInsuranceUpcomingExpiry] TO [DYNGRP]
GO
