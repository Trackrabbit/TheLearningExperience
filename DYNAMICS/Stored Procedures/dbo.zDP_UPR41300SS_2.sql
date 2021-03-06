SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_UPR41300SS_2] (@DSCRIPTN char(31), @TAXCODE char(7)) AS  set nocount on SELECT TOP 1  TAXCODE, DSCRIPTN, TXCALCTN_1, TXCALCTN_2, TXCALCTN_3, TXCALCTN_4, TXCALCTN_5, TXCALCTN_6, TXCALCTN_7, TXCALCTN_8, TXCALCTN_9, TXCALCTN_10, ESTDEDTN, DEPEXMPT, MXEICPMT, EXWGLIMT, EXTXRATE, DEX_ROW_ID FROM .UPR41300 WHERE DSCRIPTN = @DSCRIPTN AND TAXCODE = @TAXCODE ORDER BY DSCRIPTN ASC, TAXCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41300SS_2] TO [DYNGRP]
GO
