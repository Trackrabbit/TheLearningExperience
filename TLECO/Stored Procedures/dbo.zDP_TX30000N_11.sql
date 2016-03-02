SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX30000N_11] (@BS int, @INVATRET tinyint, @SERIES smallint, @DOCDATE datetime, @DEX_ROW_ID int, @INVATRET_RS tinyint, @SERIES_RS smallint, @DOCDATE_RS datetime, @INVATRET_RE tinyint, @SERIES_RE smallint, @DOCDATE_RE datetime) AS  set nocount on IF @INVATRET_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, SERIES, RCTRXSEQ, SEQNUMBR, TAXDTLID, TXDTLPCT, TXDTLAMT, ACTINDX, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ECTRX, VOIDSTTS, CustomerVendor_ID, CURRNIDX, Included_On_Return, Tax_Return_ID, TXORGN, TXDTLTYP, TRXSTATS, RETNUM, YEAR1, INVATRET, VATCOLCD, VATRPTID, Revision_Number, PERIODID, ISGLTRX, DEX_ROW_ID FROM .TX30000 WHERE ( INVATRET = @INVATRET AND SERIES = @SERIES AND DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR INVATRET = @INVATRET AND SERIES = @SERIES AND DOCDATE > @DOCDATE OR INVATRET = @INVATRET AND SERIES > @SERIES OR INVATRET > @INVATRET ) ORDER BY INVATRET ASC, SERIES ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE IF @INVATRET_RS = @INVATRET_RE BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, SERIES, RCTRXSEQ, SEQNUMBR, TAXDTLID, TXDTLPCT, TXDTLAMT, ACTINDX, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ECTRX, VOIDSTTS, CustomerVendor_ID, CURRNIDX, Included_On_Return, Tax_Return_ID, TXORGN, TXDTLTYP, TRXSTATS, RETNUM, YEAR1, INVATRET, VATCOLCD, VATRPTID, Revision_Number, PERIODID, ISGLTRX, DEX_ROW_ID FROM .TX30000 WHERE INVATRET = @INVATRET_RS AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( INVATRET = @INVATRET AND SERIES = @SERIES AND DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR INVATRET = @INVATRET AND SERIES = @SERIES AND DOCDATE > @DOCDATE OR INVATRET = @INVATRET AND SERIES > @SERIES OR INVATRET > @INVATRET ) ORDER BY INVATRET ASC, SERIES ASC, DOCDATE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, SERIES, RCTRXSEQ, SEQNUMBR, TAXDTLID, TXDTLPCT, TXDTLAMT, ACTINDX, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ECTRX, VOIDSTTS, CustomerVendor_ID, CURRNIDX, Included_On_Return, Tax_Return_ID, TXORGN, TXDTLTYP, TRXSTATS, RETNUM, YEAR1, INVATRET, VATCOLCD, VATRPTID, Revision_Number, PERIODID, ISGLTRX, DEX_ROW_ID FROM .TX30000 WHERE INVATRET BETWEEN @INVATRET_RS AND @INVATRET_RE AND SERIES BETWEEN @SERIES_RS AND @SERIES_RE AND DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND ( INVATRET = @INVATRET AND SERIES = @SERIES AND DOCDATE = @DOCDATE AND DEX_ROW_ID > @DEX_ROW_ID OR INVATRET = @INVATRET AND SERIES = @SERIES AND DOCDATE > @DOCDATE OR INVATRET = @INVATRET AND SERIES > @SERIES OR INVATRET > @INVATRET ) ORDER BY INVATRET ASC, SERIES ASC, DOCDATE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX30000N_11] TO [DYNGRP]
GO
