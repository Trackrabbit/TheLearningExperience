SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00905F_6] (@FA_Doc_Number_RS char(17), @GLINTBTCHNUM_RS char(15), @GLINTTRXDATE_RS datetime, @ASSETINDEX_RS int, @FAYEAR_RS smallint, @FAPERIOD_RS smallint, @TRANSACCTTYPE_RS smallint, @FA_Doc_Number_RE char(17), @GLINTBTCHNUM_RE char(15), @GLINTTRXDATE_RE datetime, @ASSETINDEX_RE int, @FAYEAR_RE smallint, @FAPERIOD_RE smallint, @TRANSACCTTYPE_RE smallint) AS  set nocount on IF @FA_Doc_Number_RS IS NULL BEGIN SELECT TOP 25  GLINTBTCHNUM, GLINTTRXDATE, FINANCIALINDX, ACTINDX, ASSETINDEX, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, SOURCDOC, AMOUNT, BOOKINDX, Ledger_ID, TRANSACCTTYPE, REFRENCE, FA_Doc_Number, DEX_ROW_ID FROM .FA00905 ORDER BY FA_Doc_Number ASC, GLINTBTCHNUM ASC, GLINTTRXDATE ASC, ASSETINDEX ASC, FAYEAR ASC, FAPERIOD ASC, TRANSACCTTYPE ASC, DEX_ROW_ID ASC END ELSE IF @FA_Doc_Number_RS = @FA_Doc_Number_RE BEGIN SELECT TOP 25  GLINTBTCHNUM, GLINTTRXDATE, FINANCIALINDX, ACTINDX, ASSETINDEX, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, SOURCDOC, AMOUNT, BOOKINDX, Ledger_ID, TRANSACCTTYPE, REFRENCE, FA_Doc_Number, DEX_ROW_ID FROM .FA00905 WHERE FA_Doc_Number = @FA_Doc_Number_RS AND GLINTBTCHNUM BETWEEN @GLINTBTCHNUM_RS AND @GLINTBTCHNUM_RE AND GLINTTRXDATE BETWEEN @GLINTTRXDATE_RS AND @GLINTTRXDATE_RE AND ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE AND FAYEAR BETWEEN @FAYEAR_RS AND @FAYEAR_RE AND FAPERIOD BETWEEN @FAPERIOD_RS AND @FAPERIOD_RE AND TRANSACCTTYPE BETWEEN @TRANSACCTTYPE_RS AND @TRANSACCTTYPE_RE ORDER BY FA_Doc_Number ASC, GLINTBTCHNUM ASC, GLINTTRXDATE ASC, ASSETINDEX ASC, FAYEAR ASC, FAPERIOD ASC, TRANSACCTTYPE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  GLINTBTCHNUM, GLINTTRXDATE, FINANCIALINDX, ACTINDX, ASSETINDEX, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, SOURCDOC, AMOUNT, BOOKINDX, Ledger_ID, TRANSACCTTYPE, REFRENCE, FA_Doc_Number, DEX_ROW_ID FROM .FA00905 WHERE FA_Doc_Number BETWEEN @FA_Doc_Number_RS AND @FA_Doc_Number_RE AND GLINTBTCHNUM BETWEEN @GLINTBTCHNUM_RS AND @GLINTBTCHNUM_RE AND GLINTTRXDATE BETWEEN @GLINTTRXDATE_RS AND @GLINTTRXDATE_RE AND ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE AND FAYEAR BETWEEN @FAYEAR_RS AND @FAYEAR_RE AND FAPERIOD BETWEEN @FAPERIOD_RS AND @FAPERIOD_RE AND TRANSACCTTYPE BETWEEN @TRANSACCTTYPE_RS AND @TRANSACCTTYPE_RE ORDER BY FA_Doc_Number ASC, GLINTBTCHNUM ASC, GLINTTRXDATE ASC, ASSETINDEX ASC, FAYEAR ASC, FAPERIOD ASC, TRANSACCTTYPE ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00905F_6] TO [DYNGRP]
GO
