SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00502L_1] (@MODIFDT_RS datetime, @LOCNCODE_RS char(11), @ITEMNMBR_RS char(31), @MODIFDT_RE datetime, @LOCNCODE_RE char(11), @ITEMNMBR_RE char(31)) AS  set nocount on IF @MODIFDT_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, RCRDTYPE, QTYONHND, ATYALLOC, SVC_Delta_Type, MODIFDT, DEX_ROW_ID FROM .SVC00502 ORDER BY MODIFDT DESC, LOCNCODE DESC, ITEMNMBR DESC END ELSE IF @MODIFDT_RS = @MODIFDT_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, RCRDTYPE, QTYONHND, ATYALLOC, SVC_Delta_Type, MODIFDT, DEX_ROW_ID FROM .SVC00502 WHERE MODIFDT = @MODIFDT_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY MODIFDT DESC, LOCNCODE DESC, ITEMNMBR DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, RCRDTYPE, QTYONHND, ATYALLOC, SVC_Delta_Type, MODIFDT, DEX_ROW_ID FROM .SVC00502 WHERE MODIFDT BETWEEN @MODIFDT_RS AND @MODIFDT_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY MODIFDT DESC, LOCNCODE DESC, ITEMNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00502L_1] TO [DYNGRP]
GO
