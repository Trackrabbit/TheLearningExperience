SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00905SS_2] (@FINANCIALINDX int) AS  set nocount on SELECT TOP 1  GLINTBTCHNUM, GLINTTRXDATE, FINANCIALINDX, ACTINDX, ASSETINDEX, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, SOURCDOC, AMOUNT, BOOKINDX, Ledger_ID, TRANSACCTTYPE, REFRENCE, FA_Doc_Number, DEX_ROW_ID FROM .FA00905 WHERE FINANCIALINDX = @FINANCIALINDX ORDER BY FINANCIALINDX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00905SS_2] TO [DYNGRP]
GO
