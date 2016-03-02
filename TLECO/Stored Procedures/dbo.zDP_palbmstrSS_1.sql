SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbmstrSS_1] (@LockboxID char(15)) AS  set nocount on SELECT TOP 1  LockboxID, LockboxDescription, paLockboxFormatType, STRGA255, LockboxFileName, XPRTFTYP, CHEKBKID, paApplyMethod, paApplyMethodInvoice, DECPLCUR, OmitStartRecords, OmitLastRecords, paHeaderRowIndicator, paDeailRowIndicator, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_ID FROM .palbmstr WHERE LockboxID = @LockboxID ORDER BY LockboxID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbmstrSS_1] TO [DYNGRP]
GO
