SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610002SS_1] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LNITMSEQ, LOCNCODE, STRTDATE, ENDDATE, BSSI_SalesReportFreqcy, BSSI_SICCode, NOTEINDX, BSSI_SalesAuditFreqcy, BSSI_Leased_Space_SF, BSSI_Leased_Space_SM, BSSI_MeterReadingFreqcy, BSSI_NAICS, BSSI_Reporting, DEX_ROW_ID FROM .B4610002 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Tenant_Lease_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610002SS_1] TO [DYNGRP]
GO
