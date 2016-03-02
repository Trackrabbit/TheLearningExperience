SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10360F_2] (@POPRCTNM_RS char(17), @RCPTLNNM_RS int, @DELETE1_RS tinyint, @POPRCTNM_RE char(17), @RCPTLNNM_RE int, @DELETE1_RE tinyint) AS  set nocount on IF @POPRCTNM_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, TAXDTLID, ACTINDX, BKOUTTAX, TAXAMNT, ORTAXAMT, TAXPURCH, ORGTXPCH, TOTPURCH, ORTOTPUR, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TXDTOTTX, OTTAXPON, TRXSORCE, POP_Tax_Note_ID_Array_1, POP_Tax_Note_ID_Array_2, CURRNIDX, DELETE1, DEX_ROW_ID FROM .POP10360 ORDER BY POPRCTNM ASC, RCPTLNNM ASC, DELETE1 ASC, DEX_ROW_ID ASC END ELSE IF @POPRCTNM_RS = @POPRCTNM_RE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, TAXDTLID, ACTINDX, BKOUTTAX, TAXAMNT, ORTAXAMT, TAXPURCH, ORGTXPCH, TOTPURCH, ORTOTPUR, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TXDTOTTX, OTTAXPON, TRXSORCE, POP_Tax_Note_ID_Array_1, POP_Tax_Note_ID_Array_2, CURRNIDX, DELETE1, DEX_ROW_ID FROM .POP10360 WHERE POPRCTNM = @POPRCTNM_RS AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE AND DELETE1 BETWEEN @DELETE1_RS AND @DELETE1_RE ORDER BY POPRCTNM ASC, RCPTLNNM ASC, DELETE1 ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, TAXDTLID, ACTINDX, BKOUTTAX, TAXAMNT, ORTAXAMT, TAXPURCH, ORGTXPCH, TOTPURCH, ORTOTPUR, FRTTXAMT, ORFRTTAX, MSCTXAMT, ORMSCTAX, TXDTOTTX, OTTAXPON, TRXSORCE, POP_Tax_Note_ID_Array_1, POP_Tax_Note_ID_Array_2, CURRNIDX, DELETE1, DEX_ROW_ID FROM .POP10360 WHERE POPRCTNM BETWEEN @POPRCTNM_RS AND @POPRCTNM_RE AND RCPTLNNM BETWEEN @RCPTLNNM_RS AND @RCPTLNNM_RE AND DELETE1 BETWEEN @DELETE1_RS AND @DELETE1_RE ORDER BY POPRCTNM ASC, RCPTLNNM ASC, DELETE1 ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10360F_2] TO [DYNGRP]
GO
