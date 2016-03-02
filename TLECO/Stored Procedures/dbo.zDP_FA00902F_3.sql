SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00902F_3] (@ASSETINDEX_RS int, @BOOKINDX_RS int, @FAYEAR_RS smallint, @FAPERIOD_RS smallint, @FINANCIALINDX_RS int, @ASSETINDEX_RE int, @BOOKINDX_RE int, @FAYEAR_RE smallint, @FAPERIOD_RE smallint, @FINANCIALINDX_RE int) AS  set nocount on IF @ASSETINDEX_RS IS NULL BEGIN SELECT TOP 25  FINANCIALINDX, ASSETINDEX, BOOKINDX, FA_Doc_Number, TRANSDATESTAMP, TRANSTIMESTAMP, FISCALYRADDED, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, AMOUNT, TRANSUSERID, SOURCDOC, TRANSACCTTYPE, INTERFACEGL, GLINTTRXDATE, GLINTDATESTAMP, GLINTTIMESTAMP, GLINTACCTINDX, GLINTBTCHNUM, FA_Reset_Offset_Index, FA_Reset_User_ID, FA_Reset_Date, FA_Reset_Time, Ledger_ID, REFRENCE, DEX_ROW_ID FROM .FA00902 ORDER BY ASSETINDEX ASC, BOOKINDX ASC, FAYEAR ASC, FAPERIOD ASC, FINANCIALINDX ASC END ELSE IF @ASSETINDEX_RS = @ASSETINDEX_RE BEGIN SELECT TOP 25  FINANCIALINDX, ASSETINDEX, BOOKINDX, FA_Doc_Number, TRANSDATESTAMP, TRANSTIMESTAMP, FISCALYRADDED, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, AMOUNT, TRANSUSERID, SOURCDOC, TRANSACCTTYPE, INTERFACEGL, GLINTTRXDATE, GLINTDATESTAMP, GLINTTIMESTAMP, GLINTACCTINDX, GLINTBTCHNUM, FA_Reset_Offset_Index, FA_Reset_User_ID, FA_Reset_Date, FA_Reset_Time, Ledger_ID, REFRENCE, DEX_ROW_ID FROM .FA00902 WHERE ASSETINDEX = @ASSETINDEX_RS AND BOOKINDX BETWEEN @BOOKINDX_RS AND @BOOKINDX_RE AND FAYEAR BETWEEN @FAYEAR_RS AND @FAYEAR_RE AND FAPERIOD BETWEEN @FAPERIOD_RS AND @FAPERIOD_RE AND FINANCIALINDX BETWEEN @FINANCIALINDX_RS AND @FINANCIALINDX_RE ORDER BY ASSETINDEX ASC, BOOKINDX ASC, FAYEAR ASC, FAPERIOD ASC, FINANCIALINDX ASC END ELSE BEGIN SELECT TOP 25  FINANCIALINDX, ASSETINDEX, BOOKINDX, FA_Doc_Number, TRANSDATESTAMP, TRANSTIMESTAMP, FISCALYRADDED, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, AMOUNT, TRANSUSERID, SOURCDOC, TRANSACCTTYPE, INTERFACEGL, GLINTTRXDATE, GLINTDATESTAMP, GLINTTIMESTAMP, GLINTACCTINDX, GLINTBTCHNUM, FA_Reset_Offset_Index, FA_Reset_User_ID, FA_Reset_Date, FA_Reset_Time, Ledger_ID, REFRENCE, DEX_ROW_ID FROM .FA00902 WHERE ASSETINDEX BETWEEN @ASSETINDEX_RS AND @ASSETINDEX_RE AND BOOKINDX BETWEEN @BOOKINDX_RS AND @BOOKINDX_RE AND FAYEAR BETWEEN @FAYEAR_RS AND @FAYEAR_RE AND FAPERIOD BETWEEN @FAPERIOD_RS AND @FAPERIOD_RE AND FINANCIALINDX BETWEEN @FINANCIALINDX_RS AND @FINANCIALINDX_RE ORDER BY ASSETINDEX ASC, BOOKINDX ASC, FAYEAR ASC, FAPERIOD ASC, FINANCIALINDX ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00902F_3] TO [DYNGRP]
GO
