SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602401N_1] (@BS int, @BSSI_Term char(25), @LNITMSEQ int, @BSSI_Term_RS char(25), @LNITMSEQ_RS int, @BSSI_Term_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Term_RS IS NULL BEGIN SELECT TOP 25  BSSI_Term, LNITMSEQ, BSSI_Term_Option, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Billing_Frequency, NOTEINDX, DEX_ROW_ID FROM .B4602401 WHERE ( BSSI_Term = @BSSI_Term AND LNITMSEQ > @LNITMSEQ OR BSSI_Term > @BSSI_Term ) ORDER BY BSSI_Term ASC, LNITMSEQ ASC END ELSE IF @BSSI_Term_RS = @BSSI_Term_RE BEGIN SELECT TOP 25  BSSI_Term, LNITMSEQ, BSSI_Term_Option, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Billing_Frequency, NOTEINDX, DEX_ROW_ID FROM .B4602401 WHERE BSSI_Term = @BSSI_Term_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( BSSI_Term = @BSSI_Term AND LNITMSEQ > @LNITMSEQ OR BSSI_Term > @BSSI_Term ) ORDER BY BSSI_Term ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  BSSI_Term, LNITMSEQ, BSSI_Term_Option, BSSI_Renewal_Option_Qty, BSSI_Renewal_Option_Mont, BSSI_Renewal_Option_Year, BSSI_Billing_Frequency, NOTEINDX, DEX_ROW_ID FROM .B4602401 WHERE BSSI_Term BETWEEN @BSSI_Term_RS AND @BSSI_Term_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( BSSI_Term = @BSSI_Term AND LNITMSEQ > @LNITMSEQ OR BSSI_Term > @BSSI_Term ) ORDER BY BSSI_Term ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602401N_1] TO [DYNGRP]
GO
