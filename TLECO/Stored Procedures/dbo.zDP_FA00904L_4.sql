SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_FA00904L_4] (@BOOKINDX_RS int, @INTERFACEGL_RS tinyint, @GLINTBTCHNUM_RS char(15), @GLINTACCTINDX_RS int, @FINANCIALINDX_RS int, @BOOKINDX_RE int, @INTERFACEGL_RE tinyint, @GLINTBTCHNUM_RE char(15), @GLINTACCTINDX_RE int, @FINANCIALINDX_RE int) AS  set nocount on IF @BOOKINDX_RS IS NULL BEGIN SELECT TOP 25  FINANCIALINDX, ASSETINDEX, BOOKINDX, FA_Doc_Number, TRANSDATESTAMP, TRANSTIMESTAMP, FISCALYRADDED, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, AMOUNT, TRANSUSERID, SOURCDOC, TRANSACCTTYPE, INTERFACEGL, GLINTTRXDATE, GLINTDATESTAMP, GLINTTIMESTAMP, GLINTACCTINDX, GLINTBTCHNUM, FA_Reset_Offset_Index, FA_Reset_User_ID, FA_Reset_Date, FA_Reset_Time, Ledger_ID, REFRENCE, DEX_ROW_ID FROM .FA00904 ORDER BY BOOKINDX DESC, INTERFACEGL DESC, GLINTBTCHNUM DESC, GLINTACCTINDX DESC, FINANCIALINDX DESC END ELSE IF @BOOKINDX_RS = @BOOKINDX_RE BEGIN SELECT TOP 25  FINANCIALINDX, ASSETINDEX, BOOKINDX, FA_Doc_Number, TRANSDATESTAMP, TRANSTIMESTAMP, FISCALYRADDED, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, AMOUNT, TRANSUSERID, SOURCDOC, TRANSACCTTYPE, INTERFACEGL, GLINTTRXDATE, GLINTDATESTAMP, GLINTTIMESTAMP, GLINTACCTINDX, GLINTBTCHNUM, FA_Reset_Offset_Index, FA_Reset_User_ID, FA_Reset_Date, FA_Reset_Time, Ledger_ID, REFRENCE, DEX_ROW_ID FROM .FA00904 WHERE BOOKINDX = @BOOKINDX_RS AND INTERFACEGL BETWEEN @INTERFACEGL_RS AND @INTERFACEGL_RE AND GLINTBTCHNUM BETWEEN @GLINTBTCHNUM_RS AND @GLINTBTCHNUM_RE AND GLINTACCTINDX BETWEEN @GLINTACCTINDX_RS AND @GLINTACCTINDX_RE AND FINANCIALINDX BETWEEN @FINANCIALINDX_RS AND @FINANCIALINDX_RE ORDER BY BOOKINDX DESC, INTERFACEGL DESC, GLINTBTCHNUM DESC, GLINTACCTINDX DESC, FINANCIALINDX DESC END ELSE BEGIN SELECT TOP 25  FINANCIALINDX, ASSETINDEX, BOOKINDX, FA_Doc_Number, TRANSDATESTAMP, TRANSTIMESTAMP, FISCALYRADDED, FAYEAR, FAPERIOD, DEPRFROMDATE, DEPRTODATE, AMOUNT, TRANSUSERID, SOURCDOC, TRANSACCTTYPE, INTERFACEGL, GLINTTRXDATE, GLINTDATESTAMP, GLINTTIMESTAMP, GLINTACCTINDX, GLINTBTCHNUM, FA_Reset_Offset_Index, FA_Reset_User_ID, FA_Reset_Date, FA_Reset_Time, Ledger_ID, REFRENCE, DEX_ROW_ID FROM .FA00904 WHERE BOOKINDX BETWEEN @BOOKINDX_RS AND @BOOKINDX_RE AND INTERFACEGL BETWEEN @INTERFACEGL_RS AND @INTERFACEGL_RE AND GLINTBTCHNUM BETWEEN @GLINTBTCHNUM_RS AND @GLINTBTCHNUM_RE AND GLINTACCTINDX BETWEEN @GLINTACCTINDX_RS AND @GLINTACCTINDX_RE AND FINANCIALINDX BETWEEN @FINANCIALINDX_RS AND @FINANCIALINDX_RE ORDER BY BOOKINDX DESC, INTERFACEGL DESC, GLINTBTCHNUM DESC, GLINTACCTINDX DESC, FINANCIALINDX DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_FA00904L_4] TO [DYNGRP]
GO