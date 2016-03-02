SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602945SS_1] (@BSSI_Ground_Lease_Number char(25), @LNITMSEQ int, @LNSEQNBR numeric(19,5), @JRNENTRY int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, LNITMSEQ, LNSEQNBR, JRNENTRY, DOCTYPE, VCHNUMWK, BSSI_Line_SL_Amount, MDFUSRID, MODIFDT, DEX_ROW_ID FROM .B4602945 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number AND LNITMSEQ = @LNITMSEQ AND LNSEQNBR = @LNSEQNBR AND JRNENTRY = @JRNENTRY ORDER BY BSSI_Ground_Lease_Number ASC, LNITMSEQ ASC, LNSEQNBR ASC, JRNENTRY ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602945SS_1] TO [DYNGRP]
GO
