SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602242N_6] (@BS int, @BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @BSSI_Term char(25), @DEX_ROW_ID int, @BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @BSSI_Charge_ID_RS char(25), @BSSI_Term_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @BSSI_Charge_ID_RE char(25), @BSSI_Term_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_Escalation_ID, BSSI_Term, STRTDATE, ENDDATE, BSSI_Escalation_Type, BSSI_Escalation_Type1, BSSI_Increase_Amount, BSSI_Increase_Percent, BSSI_CPI_Date, BSSI_CPI_Schedule_ID, BSSIChargeRateScheduleID, BSSI_CalculationMethod, BSSI_Dummy, DEX_ROW_ID FROM .B4602242 WHERE ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_Term = @BSSI_Term AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_Term > @BSSI_Term OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, BSSI_Term ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_Escalation_ID, BSSI_Term, STRTDATE, ENDDATE, BSSI_Escalation_Type, BSSI_Escalation_Type1, BSSI_Increase_Amount, BSSI_Increase_Percent, BSSI_CPI_Date, BSSI_CPI_Schedule_ID, BSSIChargeRateScheduleID, BSSI_CalculationMethod, BSSI_Dummy, DEX_ROW_ID FROM .B4602242 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND BSSI_Term BETWEEN @BSSI_Term_RS AND @BSSI_Term_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_Term = @BSSI_Term AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_Term > @BSSI_Term OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, BSSI_Term ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_Escalation_ID, BSSI_Term, STRTDATE, ENDDATE, BSSI_Escalation_Type, BSSI_Escalation_Type1, BSSI_Increase_Amount, BSSI_Increase_Percent, BSSI_CPI_Date, BSSI_CPI_Schedule_ID, BSSIChargeRateScheduleID, BSSI_CalculationMethod, BSSI_Dummy, DEX_ROW_ID FROM .B4602242 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND BSSI_Term BETWEEN @BSSI_Term_RS AND @BSSI_Term_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_Term = @BSSI_Term AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_Term > @BSSI_Term OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID > @BSSI_Charge_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE > @LOCNCODE OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, BSSI_Term ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602242N_6] TO [DYNGRP]
GO
