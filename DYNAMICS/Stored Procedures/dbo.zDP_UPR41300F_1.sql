SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR41300F_1] (@TAXCODE_RS char(7), @TAXCODE_RE char(7)) AS  set nocount on IF @TAXCODE_RS IS NULL BEGIN SELECT TOP 25  TAXCODE, DSCRIPTN, TXCALCTN_1, TXCALCTN_2, TXCALCTN_3, TXCALCTN_4, TXCALCTN_5, TXCALCTN_6, TXCALCTN_7, TXCALCTN_8, TXCALCTN_9, TXCALCTN_10, ESTDEDTN, DEPEXMPT, MXEICPMT, EXWGLIMT, EXTXRATE, DEX_ROW_ID FROM .UPR41300 ORDER BY TAXCODE ASC END ELSE IF @TAXCODE_RS = @TAXCODE_RE BEGIN SELECT TOP 25  TAXCODE, DSCRIPTN, TXCALCTN_1, TXCALCTN_2, TXCALCTN_3, TXCALCTN_4, TXCALCTN_5, TXCALCTN_6, TXCALCTN_7, TXCALCTN_8, TXCALCTN_9, TXCALCTN_10, ESTDEDTN, DEPEXMPT, MXEICPMT, EXWGLIMT, EXTXRATE, DEX_ROW_ID FROM .UPR41300 WHERE TAXCODE = @TAXCODE_RS ORDER BY TAXCODE ASC END ELSE BEGIN SELECT TOP 25  TAXCODE, DSCRIPTN, TXCALCTN_1, TXCALCTN_2, TXCALCTN_3, TXCALCTN_4, TXCALCTN_5, TXCALCTN_6, TXCALCTN_7, TXCALCTN_8, TXCALCTN_9, TXCALCTN_10, ESTDEDTN, DEPEXMPT, MXEICPMT, EXWGLIMT, EXTXRATE, DEX_ROW_ID FROM .UPR41300 WHERE TAXCODE BETWEEN @TAXCODE_RS AND @TAXCODE_RE ORDER BY TAXCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41300F_1] TO [DYNGRP]
GO
