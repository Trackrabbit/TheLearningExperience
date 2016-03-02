SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX20500L_1] (@DOCNUMBR_RS char(21), @SEQNUMBR_RS int, @DOCNUMBR_RE char(21), @SEQNUMBR_RE int) AS  set nocount on IF @DOCNUMBR_RS IS NULL BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, APFRDCNM, APFRDCTY, SERIES, TaxRebateType, SEQNUMBR, TAXDTLID, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ACTINDX, ECTRX, TRXSORCE, POSTED, CustomerVendor_ID, DOCDATE, Tax_Date, PSTGDATE, CURRNIDX, DEX_ROW_ID FROM .TX20500 ORDER BY DOCNUMBR DESC, SEQNUMBR DESC END ELSE IF @DOCNUMBR_RS = @DOCNUMBR_RE BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, APFRDCNM, APFRDCTY, SERIES, TaxRebateType, SEQNUMBR, TAXDTLID, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ACTINDX, ECTRX, TRXSORCE, POSTED, CustomerVendor_ID, DOCDATE, Tax_Date, PSTGDATE, CURRNIDX, DEX_ROW_ID FROM .TX20500 WHERE DOCNUMBR = @DOCNUMBR_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY DOCNUMBR DESC, SEQNUMBR DESC END ELSE BEGIN SELECT TOP 25  DOCNUMBR, DOCTYPE, APFRDCNM, APFRDCTY, SERIES, TaxRebateType, SEQNUMBR, TAXDTLID, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ACTINDX, ECTRX, TRXSORCE, POSTED, CustomerVendor_ID, DOCDATE, Tax_Date, PSTGDATE, CURRNIDX, DEX_ROW_ID FROM .TX20500 WHERE DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY DOCNUMBR DESC, SEQNUMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX20500L_1] TO [DYNGRP]
GO
