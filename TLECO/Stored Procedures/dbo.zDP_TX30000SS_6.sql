SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX30000SS_6] (@PSTGDATE datetime) AS  set nocount on SELECT TOP 1  DOCNUMBR, DOCTYPE, SERIES, RCTRXSEQ, SEQNUMBR, TAXDTLID, TXDTLPCT, TXDTLAMT, ACTINDX, DOCDATE, Tax_Date, PSTGDATE, TAXAMNT, ORTAXAMT, Taxable_Amount, Originating_Taxable_Amt, DOCAMNT, ORDOCAMT, ECTRX, VOIDSTTS, CustomerVendor_ID, CURRNIDX, Included_On_Return, Tax_Return_ID, TXORGN, TXDTLTYP, TRXSTATS, RETNUM, YEAR1, INVATRET, VATCOLCD, VATRPTID, Revision_Number, PERIODID, ISGLTRX, DEX_ROW_ID FROM .TX30000 WHERE PSTGDATE = @PSTGDATE ORDER BY PSTGDATE ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX30000SS_6] TO [DYNGRP]
GO
