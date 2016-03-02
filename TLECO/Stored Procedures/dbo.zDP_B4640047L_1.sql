SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640047L_1] (@BSSI_Building_ID_RS char(25), @YEAR1_RS smallint, @BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @BSSI_Charge_ID_RS char(25), @LNITMSEQ_RS int, @BSSI_Building_ID_RE char(25), @YEAR1_RE smallint, @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @BSSI_Charge_ID_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Building_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Building_ID, YEAR1, BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, DATE1, SOPNUMBE, BSSI_BilledAmount, BSSI_PercentRent, STRTDATE, ENDDATE, DEX_ROW_ID FROM .B4640047 ORDER BY BSSI_Building_ID DESC, YEAR1 DESC, BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, BSSI_Charge_ID DESC, LNITMSEQ DESC END ELSE IF @BSSI_Building_ID_RS = @BSSI_Building_ID_RE BEGIN SELECT TOP 25  BSSI_Building_ID, YEAR1, BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, DATE1, SOPNUMBE, BSSI_BilledAmount, BSSI_PercentRent, STRTDATE, ENDDATE, DEX_ROW_ID FROM .B4640047 WHERE BSSI_Building_ID = @BSSI_Building_ID_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_Building_ID DESC, YEAR1 DESC, BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, BSSI_Charge_ID DESC, LNITMSEQ DESC END ELSE BEGIN SELECT TOP 25  BSSI_Building_ID, YEAR1, BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNITMSEQ, DATE1, SOPNUMBE, BSSI_BilledAmount, BSSI_PercentRent, STRTDATE, ENDDATE, DEX_ROW_ID FROM .B4640047 WHERE BSSI_Building_ID BETWEEN @BSSI_Building_ID_RS AND @BSSI_Building_ID_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY BSSI_Building_ID DESC, YEAR1 DESC, BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, BSSI_Charge_ID DESC, LNITMSEQ DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640047L_1] TO [DYNGRP]
GO
