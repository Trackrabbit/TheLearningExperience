SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0530511L_2] (@BSSI_Capital_Call_ID_RS char(25), @VENDORID_RS char(15), @BSSI_Fee_ID_RS char(15), @BSSI_Capital_Call_ID_RE char(25), @VENDORID_RE char(15), @BSSI_Fee_ID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Capital_Call_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, VENDORID, SEQNUMBR, LNITMSEQ, BSSI_Fee_ID, BSSI_Fee_Amount, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0530511 ORDER BY BSSI_Capital_Call_ID DESC, VENDORID DESC, BSSI_Fee_ID DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Capital_Call_ID_RS = @BSSI_Capital_Call_ID_RE BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, VENDORID, SEQNUMBR, LNITMSEQ, BSSI_Fee_ID, BSSI_Fee_Amount, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0530511 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID_RS AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND BSSI_Fee_ID BETWEEN @BSSI_Fee_ID_RS AND @BSSI_Fee_ID_RE ORDER BY BSSI_Capital_Call_ID DESC, VENDORID DESC, BSSI_Fee_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, VENDORID, SEQNUMBR, LNITMSEQ, BSSI_Fee_ID, BSSI_Fee_Amount, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0530511 WHERE BSSI_Capital_Call_ID BETWEEN @BSSI_Capital_Call_ID_RS AND @BSSI_Capital_Call_ID_RE AND VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND BSSI_Fee_ID BETWEEN @BSSI_Fee_ID_RS AND @BSSI_Fee_ID_RE ORDER BY BSSI_Capital_Call_ID DESC, VENDORID DESC, BSSI_Fee_ID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0530511L_2] TO [DYNGRP]
GO
