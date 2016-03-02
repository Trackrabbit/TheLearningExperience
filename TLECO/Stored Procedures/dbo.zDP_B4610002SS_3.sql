SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610002SS_3] (@LOCNCODE char(11), @BSSI_Tenant_Lease_Number char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LNITMSEQ, LOCNCODE, STRTDATE, ENDDATE, BSSI_SalesReportFreqcy, BSSI_SICCode, NOTEINDX, BSSI_SalesAuditFreqcy, BSSI_Leased_Space_SF, BSSI_Leased_Space_SM, BSSI_MeterReadingFreqcy, BSSI_NAICS, BSSI_Reporting, DEX_ROW_ID FROM .B4610002 WHERE LOCNCODE = @LOCNCODE AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number ORDER BY LOCNCODE ASC, BSSI_Tenant_Lease_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610002SS_3] TO [DYNGRP]
GO
