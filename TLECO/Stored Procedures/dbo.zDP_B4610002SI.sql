SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610002SI] (@BSSI_Tenant_Lease_Number char(25), @LNITMSEQ int, @LOCNCODE char(11), @STRTDATE datetime, @ENDDATE datetime, @BSSI_SalesReportFreqcy smallint, @BSSI_SICCode char(31), @NOTEINDX numeric(19,5), @BSSI_SalesAuditFreqcy smallint, @BSSI_Leased_Space_SF numeric(19,5), @BSSI_Leased_Space_SM numeric(19,5), @BSSI_MeterReadingFreqcy smallint, @BSSI_NAICS char(31), @BSSI_Reporting tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4610002 (BSSI_Tenant_Lease_Number, LNITMSEQ, LOCNCODE, STRTDATE, ENDDATE, BSSI_SalesReportFreqcy, BSSI_SICCode, NOTEINDX, BSSI_SalesAuditFreqcy, BSSI_Leased_Space_SF, BSSI_Leased_Space_SM, BSSI_MeterReadingFreqcy, BSSI_NAICS, BSSI_Reporting) VALUES ( @BSSI_Tenant_Lease_Number, @LNITMSEQ, @LOCNCODE, @STRTDATE, @ENDDATE, @BSSI_SalesReportFreqcy, @BSSI_SICCode, @NOTEINDX, @BSSI_SalesAuditFreqcy, @BSSI_Leased_Space_SF, @BSSI_Leased_Space_SM, @BSSI_MeterReadingFreqcy, @BSSI_NAICS, @BSSI_Reporting) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610002SI] TO [DYNGRP]
GO
