SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX30000F_1] (@DOCNUMBR_RS char(21), @DOCTYPE_RS smallint, @SERIES_RS smallint, @RCTRXSEQ_RS numeric(19,5), @SEQNUMBR_RS int, @DOCNUMBR_RE char(21), @DOCTYPE_RE smallint, @SERIES_RE smallint, @RCTRXSEQ_RE numeric(19,5), @SEQNUMBR_RE int) AS  set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, SERIES, RCTRXSEQ, SEQNUMBR, TAXDTLID, TXDTLPCT, TXDTLAMT, ACTINDX, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ECTRX, VOIDSTTS, CustomerVendor_ID, CURRNIDX, Included_On_Return, Tax_Return_ID, TXORGN, TXDTLTYP, TRXSTATS, RETNUM, YEAR1, INVATRET, VATCOLCD, VATRPTID, Revision_Number, PERIODID, ISGLTRX, DEX_ROW_ID FROM .TX30000 ORDER BY DOCNUMBR ASC, DOCTYPE ASC, SERIES ASC, RCTRXSEQ ASC, SEQNUMBR ASC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, SERIES, RCTRXSEQ, SEQNUMBR, TAXDTLID, TXDTLPCT, TXDTLAMT, ACTINDX, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ECTRX, VOIDSTTS, CustomerVendor_ID, CURRNIDX, Included_On_Return, Tax_Return_ID, TXORGN, TXDTLTYP, TRXSTATS, RETNUM, YEAR1, INVATRET, VATCOLCD, VATRPTID, Revision_Number, PERIODID, ISGLTRX, DEX_ROW_ID FROM .TX30000 WHERE DOCNUMBR = @DOCNUMBR_RS AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND RCTRXSEQ BETWEEN @RCTRXSEQ_RS AND @RCTRXSEQ_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY DOCNUMBR ASC, DOCTYPE ASC, SERIES ASC, RCTRXSEQ ASC, SEQNUMBR ASC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, SERIES, RCTRXSEQ, SEQNUMBR, TAXDTLID, TXDTLPCT, TXDTLAMT, ACTINDX, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ECTRX, VOIDSTTS, CustomerVendor_ID, CURRNIDX, Included_On_Return, Tax_Return_ID, TXORGN, TXDTLTYP, TRXSTATS, RETNUM, YEAR1, INVATRET, VATCOLCD, VATRPTID, Revision_Number, PERIODID, ISGLTRX, DEX_ROW_ID FROM .TX30000 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND RCTRXSEQ BETWEEN @RCTRXSEQ_RS AND @RCTRXSEQ_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY DOCNUMBR ASC, DOCTYPE ASC, SERIES ASC, RCTRXSEQ ASC, SEQNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX30000F_1] TO [DYNGRP]
GO
