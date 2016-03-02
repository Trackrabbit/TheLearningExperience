SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00905F_4] (@GLINTBTCHNUM_RS char(15), @FINANCIALINDX_RS int, @GLINTBTCHNUM_RE char(15), @FINANCIALINDX_RE int) AS  set nocount on IF @GLINTBTCHNUM_RS IS NULL BEGIN SELECT TOP 25  GLINTBTCHNUM, GLINTTRXDATE, FINANCIALINDX, ACTINDX, ASSETINDEX, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, SOURCDOC, AMOUNT, BOOKINDX, Ledger_ID, TRANSACCTTYPE, REFRENCE, FA_Doc_Number, DEX_ROW_ID FROM .FA00905 ORDER BY GLINTBTCHNUM ASC, FINANCIALINDX ASC END ELSE IF @GLINTBTCHNUM_RS = @GLINTBTCHNUM_RE BEGIN SELECT TOP 25  GLINTBTCHNUM, GLINTTRXDATE, FINANCIALINDX, ACTINDX, ASSETINDEX, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, SOURCDOC, AMOUNT, BOOKINDX, Ledger_ID, TRANSACCTTYPE, REFRENCE, FA_Doc_Number, DEX_ROW_ID FROM .FA00905 WHERE GLINTBTCHNUM = @GLINTBTCHNUM_RS AND FINANCIALINDX BETWEEN @FINANCIALINDX_RS AND @FINANCIALINDX_RE ORDER BY GLINTBTCHNUM ASC, FINANCIALINDX ASC END ELSE BEGIN SELECT TOP 25  GLINTBTCHNUM, GLINTTRXDATE, FINANCIALINDX, ACTINDX, ASSETINDEX, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, SOURCDOC, AMOUNT, BOOKINDX, Ledger_ID, TRANSACCTTYPE, REFRENCE, FA_Doc_Number, DEX_ROW_ID FROM .FA00905 WHERE GLINTBTCHNUM BETWEEN @GLINTBTCHNUM_RS AND @GLINTBTCHNUM_RE AND FINANCIALINDX BETWEEN @FINANCIALINDX_RS AND @FINANCIALINDX_RE ORDER BY GLINTBTCHNUM ASC, FINANCIALINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00905F_4] TO [DYNGRP]
GO
