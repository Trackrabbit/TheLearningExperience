SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640061SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @LNSEQNBR numeric(19,5), @BSSI_Scroll_LineSequence numeric(19,5), @BSSI_BreakPointAmt numeric(19,5), @BSSI_PercentFactor numeric(19,5), @BSSI_Dummy tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640061 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, LNSEQNBR, BSSI_Scroll_LineSequence, BSSI_BreakPointAmt, BSSI_PercentFactor, BSSI_Dummy) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @LNSEQNBR, @BSSI_Scroll_LineSequence, @BSSI_BreakPointAmt, @BSSI_PercentFactor, @BSSI_Dummy) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640061SI] TO [DYNGRP]
GO
