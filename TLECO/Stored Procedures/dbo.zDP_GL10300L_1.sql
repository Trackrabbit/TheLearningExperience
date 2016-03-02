SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL10300L_1] (@JRNENTRY_RS int, @RCTRXSEQ_RS numeric(19,5), @SQNCLINE_RS numeric(19,5), @JRNENTRY_RE int, @RCTRXSEQ_RE numeric(19,5), @SQNCLINE_RE numeric(19,5)) AS  set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  JRNENTRY, RCTRXSEQ, SQNCLINE, SQNCLINE2, TAXDTLID, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, TXDTLPCT, TXDTLAMT, TXDTLTYP, ACTINDX, CURRNIDX, DEX_ROW_ID FROM .GL10300 ORDER BY JRNENTRY DESC, RCTRXSEQ DESC, SQNCLINE DESC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  JRNENTRY, RCTRXSEQ, SQNCLINE, SQNCLINE2, TAXDTLID, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, TXDTLPCT, TXDTLAMT, TXDTLTYP, ACTINDX, CURRNIDX, DEX_ROW_ID FROM .GL10300 WHERE JRNENTRY = @JRNENTRY_RS AND RCTRXSEQ BETWEEN @RCTRXSEQ_RS AND @RCTRXSEQ_RE AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE ORDER BY JRNENTRY DESC, RCTRXSEQ DESC, SQNCLINE DESC END ELSE BEGIN SELECT TOP 25  JRNENTRY, RCTRXSEQ, SQNCLINE, SQNCLINE2, TAXDTLID, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, TXDTLPCT, TXDTLAMT, TXDTLTYP, ACTINDX, CURRNIDX, DEX_ROW_ID FROM .GL10300 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE AND RCTRXSEQ BETWEEN @RCTRXSEQ_RS AND @RCTRXSEQ_RE AND SQNCLINE BETWEEN @SQNCLINE_RS AND @SQNCLINE_RE ORDER BY JRNENTRY DESC, RCTRXSEQ DESC, SQNCLINE DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL10300L_1] TO [DYNGRP]
GO
