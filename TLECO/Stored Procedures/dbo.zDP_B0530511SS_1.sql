SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0530511SS_1] (@BSSI_Capital_Call_ID char(25), @VENDORID char(15), @SEQNUMBR int, @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Capital_Call_ID, VENDORID, SEQNUMBR, LNITMSEQ, BSSI_Fee_ID, BSSI_Fee_Amount, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0530511 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID AND VENDORID = @VENDORID AND SEQNUMBR = @SEQNUMBR AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_Capital_Call_ID ASC, VENDORID ASC, SEQNUMBR ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0530511SS_1] TO [DYNGRP]
GO
