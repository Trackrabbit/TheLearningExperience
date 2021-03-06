SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602242SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @BSSI_Charge_ID char(25), @BSSI_Escalation_ID char(25), @BSSI_Term char(25), @STRTDATE datetime, @ENDDATE datetime, @BSSI_Escalation_Type smallint, @BSSI_Escalation_Type1 smallint, @BSSI_Increase_Amount numeric(19,5), @BSSI_Increase_Percent numeric(19,5), @BSSI_CPI_Date datetime, @BSSI_CPI_Schedule_ID char(25), @BSSIChargeRateScheduleID char(25), @BSSI_CalculationMethod smallint, @BSSI_Dummy tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602242 (BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_Escalation_ID, BSSI_Term, STRTDATE, ENDDATE, BSSI_Escalation_Type, BSSI_Escalation_Type1, BSSI_Increase_Amount, BSSI_Increase_Percent, BSSI_CPI_Date, BSSI_CPI_Schedule_ID, BSSIChargeRateScheduleID, BSSI_CalculationMethod, BSSI_Dummy) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @LNITMSEQ, @LNSEQNBR, @BSSI_Charge_ID, @BSSI_Escalation_ID, @BSSI_Term, @STRTDATE, @ENDDATE, @BSSI_Escalation_Type, @BSSI_Escalation_Type1, @BSSI_Increase_Amount, @BSSI_Increase_Percent, @BSSI_CPI_Date, @BSSI_CPI_Schedule_ID, @BSSIChargeRateScheduleID, @BSSI_CalculationMethod, @BSSI_Dummy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602242SI] TO [DYNGRP]
GO
