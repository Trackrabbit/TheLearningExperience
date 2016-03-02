SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510501N_1] (@BS int, @BSSI_Capital_Call_ID char(25), @LNITMSEQ int, @BSSI_Capital_Call_ID_RS char(25), @LNITMSEQ_RS int, @BSSI_Capital_Call_ID_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Capital_Call_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, BSSI_Fee_ID, BSSI_Fee_Amount, LNITMSEQ, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510501 WHERE ( BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID AND LNITMSEQ > @LNITMSEQ OR BSSI_Capital_Call_ID > @BSSI_Capital_Call_ID ) ORDER BY BSSI_Capital_Call_ID ASC, LNITMSEQ ASC END ELSE IF @BSSI_Capital_Call_ID_RS = @BSSI_Capital_Call_ID_RE BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, BSSI_Fee_ID, BSSI_Fee_Amount, LNITMSEQ, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510501 WHERE BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID AND LNITMSEQ > @LNITMSEQ OR BSSI_Capital_Call_ID > @BSSI_Capital_Call_ID ) ORDER BY BSSI_Capital_Call_ID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  BSSI_Capital_Call_ID, BSSI_Fee_ID, BSSI_Fee_Amount, LNITMSEQ, CURNCYID, CURRNIDX, DUMYRCRD, DEX_ROW_ID FROM .B0510501 WHERE BSSI_Capital_Call_ID BETWEEN @BSSI_Capital_Call_ID_RS AND @BSSI_Capital_Call_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( BSSI_Capital_Call_ID = @BSSI_Capital_Call_ID AND LNITMSEQ > @LNITMSEQ OR BSSI_Capital_Call_ID > @BSSI_Capital_Call_ID ) ORDER BY BSSI_Capital_Call_ID ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510501N_1] TO [DYNGRP]
GO
