SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR41300F_2] (@DSCRIPTN_RS char(31), @TAXCODE_RS char(7), @DSCRIPTN_RE char(31), @TAXCODE_RE char(7)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  TAXCODE, DSCRIPTN, TXCALCTN_1, TXCALCTN_2, TXCALCTN_3, TXCALCTN_4, TXCALCTN_5, TXCALCTN_6, TXCALCTN_7, TXCALCTN_8, TXCALCTN_9, TXCALCTN_10, ESTDEDTN, DEPEXMPT, MXEICPMT, EXWGLIMT, EXTXRATE, DEX_ROW_ID FROM .UPR41300 ORDER BY DSCRIPTN ASC, TAXCODE ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  TAXCODE, DSCRIPTN, TXCALCTN_1, TXCALCTN_2, TXCALCTN_3, TXCALCTN_4, TXCALCTN_5, TXCALCTN_6, TXCALCTN_7, TXCALCTN_8, TXCALCTN_9, TXCALCTN_10, ESTDEDTN, DEPEXMPT, MXEICPMT, EXWGLIMT, EXTXRATE, DEX_ROW_ID FROM .UPR41300 WHERE DSCRIPTN = @DSCRIPTN_RS AND TAXCODE BETWEEN @TAXCODE_RS AND @TAXCODE_RE ORDER BY DSCRIPTN ASC, TAXCODE ASC END ELSE BEGIN SELECT TOP 25  TAXCODE, DSCRIPTN, TXCALCTN_1, TXCALCTN_2, TXCALCTN_3, TXCALCTN_4, TXCALCTN_5, TXCALCTN_6, TXCALCTN_7, TXCALCTN_8, TXCALCTN_9, TXCALCTN_10, ESTDEDTN, DEPEXMPT, MXEICPMT, EXWGLIMT, EXTXRATE, DEX_ROW_ID FROM .UPR41300 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND TAXCODE BETWEEN @TAXCODE_RS AND @TAXCODE_RE ORDER BY DSCRIPTN ASC, TAXCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41300F_2] TO [DYNGRP]
GO