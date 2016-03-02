SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602942SS_3] (@BSSI_Ground_Lease_Number char(25), @BSSI_Charge_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_Escalation_ID, BSSI_Term, STRTDATE, ENDDATE, BSSI_Escalation_Type, BSSI_Escalation_Type1, BSSI_Increase_Amount, BSSI_Increase_Percent, BSSI_CPI_Date, BSSI_CPI_Schedule_ID, BSSIChargeRateScheduleID, DEX_ROW_ID FROM .B4602942 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND BSSI_Charge_ID = @BSSI_Charge_ID ORDER BY BSSI_Ground_Lease_Number ASC, BSSI_Charge_ID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602942SS_3] TO [DYNGRP]
GO
