SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640003SI] (@BSSI_Ground_Lease_Number char(25), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @BSSI_Charge_ID char(25), @BSSI_EscalationApplyDate datetime, @BSSI_Charge_Amount numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640003 (BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, BSSI_Charge_ID, BSSI_EscalationApplyDate, BSSI_Charge_Amount) VALUES ( @BSSI_Ground_Lease_Number, @LNITMSEQ, @LNSEQNBR, @BSSI_Charge_ID, @BSSI_EscalationApplyDate, @BSSI_Charge_Amount) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640003SI] TO [DYNGRP]
GO
