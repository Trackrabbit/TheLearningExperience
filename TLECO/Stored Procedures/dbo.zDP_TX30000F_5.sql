SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX30000F_5] (@DOCDATE_RS datetime, @DOCDATE_RE datetime) AS  set nocount on IF @DOCDATE_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, SERIES, RCTRXSEQ, SEQNUMBR, TAXDTLID, TXDTLPCT, TXDTLAMT, ACTINDX, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ECTRX, VOIDSTTS, CustomerVendor_ID, CURRNIDX, Included_On_Return, Tax_Return_ID, TXORGN, TXDTLTYP, TRXSTATS, RETNUM, YEAR1, INVATRET, VATCOLCD, VATRPTID, Revision_Number, PERIODID, ISGLTRX, DEX_ROW_ID FROM .TX30000 ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @DOCDATE_RS = @DOCDATE_RE BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, SERIES, RCTRXSEQ, SEQNUMBR, TAXDTLID, TXDTLPCT, TXDTLAMT, ACTINDX, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ECTRX, VOIDSTTS, CustomerVendor_ID, CURRNIDX, Included_On_Return, Tax_Return_ID, TXORGN, TXDTLTYP, TRXSTATS, RETNUM, YEAR1, INVATRET, VATCOLCD, VATRPTID, Revision_Number, PERIODID, ISGLTRX, DEX_ROW_ID FROM .TX30000 WHERE DOCDATE = @DOCDATE_RS ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, SERIES, RCTRXSEQ, SEQNUMBR, TAXDTLID, TXDTLPCT, TXDTLAMT, ACTINDX, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ECTRX, VOIDSTTS, CustomerVendor_ID, CURRNIDX, Included_On_Return, Tax_Return_ID, TXORGN, TXDTLTYP, TRXSTATS, RETNUM, YEAR1, INVATRET, VATCOLCD, VATRPTID, Revision_Number, PERIODID, ISGLTRX, DEX_ROW_ID FROM .TX30000 WHERE DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE ORDER BY DOCDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX30000F_5] TO [DYNGRP]
GO
