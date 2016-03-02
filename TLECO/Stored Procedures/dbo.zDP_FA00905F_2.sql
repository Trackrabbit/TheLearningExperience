SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00905F_2] (@FINANCIALINDX_RS int, @FINANCIALINDX_RE int) AS  set nocount on IF @FINANCIALINDX_RS IS NULL BEGIN SELECT TOP 25  GLINTBTCHNUM, GLINTTRXDATE, FINANCIALINDX, ACTINDX, ASSETINDEX, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, SOURCDOC, AMOUNT, BOOKINDX, Ledger_ID, TRANSACCTTYPE, REFRENCE, FA_Doc_Number, DEX_ROW_ID FROM .FA00905 ORDER BY FINANCIALINDX ASC END ELSE IF @FINANCIALINDX_RS = @FINANCIALINDX_RE BEGIN SELECT TOP 25  GLINTBTCHNUM, GLINTTRXDATE, FINANCIALINDX, ACTINDX, ASSETINDEX, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, SOURCDOC, AMOUNT, BOOKINDX, Ledger_ID, TRANSACCTTYPE, REFRENCE, FA_Doc_Number, DEX_ROW_ID FROM .FA00905 WHERE FINANCIALINDX = @FINANCIALINDX_RS ORDER BY FINANCIALINDX ASC END ELSE BEGIN SELECT TOP 25  GLINTBTCHNUM, GLINTTRXDATE, FINANCIALINDX, ACTINDX, ASSETINDEX, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, SOURCDOC, AMOUNT, BOOKINDX, Ledger_ID, TRANSACCTTYPE, REFRENCE, FA_Doc_Number, DEX_ROW_ID FROM .FA00905 WHERE FINANCIALINDX BETWEEN @FINANCIALINDX_RS AND @FINANCIALINDX_RE ORDER BY FINANCIALINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00905F_2] TO [DYNGRP]
GO