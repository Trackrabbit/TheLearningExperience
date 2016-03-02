SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[BSSI_VW_TenantEscalation]   ASSELECT 	[B4602200].[BSSI_Tenant_Lease_Number] AS 'Lease Number',	[B4602200].[NAME] AS 'Name',	[B4602200].[CUSTNMBR] AS 'Tenant Number',	[B4602200].[CUSTNAME] AS 'Tenant Name',	[B4602200].[BSSI_PortfolioID] AS 'Building ID',	[B4602200].[BSSI_Description1] AS 'Building Name',	[B4640085].[LOCNCODE] AS 'Site ID',	[B4640085].[LOCNDSCR] AS 'Site Name',	[B4602240].[BSSI_Charge_ID] AS 'Charge ID',	[B4640085].[BSSI_EscalationApplyDate] AS 'Date of Increase',	CONVERT(NUMERIC(19,2), [B4640085].[BSSI_ProratedIncrease]) AS 'Amount of Increase',	CONVERT(NUMERIC(19,2), [B4640085].[BSSI_Charge_Amount])  AS 'New Charge Amount',	(DateDiff(DD,getdate(),[B4640085].[BSSI_EscalationApplyDate])) AS 'Remaining Days',	[B4640085].LNSEQNBR AS 'Line Number',	[B4602200].BSSI_Facility_ID AS 'BSSI_Facility_ID' from [B4602200]INNER JOIN [B4602240] on [B4602200].[BSSI_Tenant_Lease_Number] = [B4602240].[BSSI_Tenant_Lease_Number]INNER JOIN [B4640085] on [B4602240].[BSSI_Tenant_Lease_Number] = [B4640085].[BSSI_Tenant_Lease_Number] AND [B4602240].[LOCNCODE] = [B4640085].[LOCNCODE] AND [B4602240].LNITMSEQ = [B4640085].LNITMSEQ WHERE [B4602200].BSSI_Tenant_Lease_Status = 2 AND (DateDiff(DD,getdate(),[B4640085].[BSSI_EscalationApplyDate])) >= 0
GO
GRANT SELECT ON  [dbo].[BSSI_VW_TenantEscalation] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BSSI_VW_TenantEscalation] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BSSI_VW_TenantEscalation] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BSSI_VW_TenantEscalation] TO [DYNGRP]
GO
