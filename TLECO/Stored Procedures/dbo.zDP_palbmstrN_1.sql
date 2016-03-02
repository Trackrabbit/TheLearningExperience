SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbmstrN_1] (@BS int, @LockboxID char(15), @LockboxID_RS char(15), @LockboxID_RE char(15)) AS  set nocount on IF @LockboxID_RS IS NULL BEGIN SELECT TOP 25  LockboxID, LockboxDescription, paLockboxFormatType, STRGA255, LockboxFileName, XPRTFTYP, CHEKBKID, paApplyMethod, paApplyMethodInvoice, DECPLCUR, OmitStartRecords, OmitLastRecords, paHeaderRowIndicator, paDeailRowIndicator, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_ID FROM .palbmstr WHERE ( LockboxID > @LockboxID ) ORDER BY LockboxID ASC END ELSE IF @LockboxID_RS = @LockboxID_RE BEGIN SELECT TOP 25  LockboxID, LockboxDescription, paLockboxFormatType, STRGA255, LockboxFileName, XPRTFTYP, CHEKBKID, paApplyMethod, paApplyMethodInvoice, DECPLCUR, OmitStartRecords, OmitLastRecords, paHeaderRowIndicator, paDeailRowIndicator, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_ID FROM .palbmstr WHERE LockboxID = @LockboxID_RS AND ( LockboxID > @LockboxID ) ORDER BY LockboxID ASC END ELSE BEGIN SELECT TOP 25  LockboxID, LockboxDescription, paLockboxFormatType, STRGA255, LockboxFileName, XPRTFTYP, CHEKBKID, paApplyMethod, paApplyMethodInvoice, DECPLCUR, OmitStartRecords, OmitLastRecords, paHeaderRowIndicator, paDeailRowIndicator, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_ID FROM .palbmstr WHERE LockboxID BETWEEN @LockboxID_RS AND @LockboxID_RE AND ( LockboxID > @LockboxID ) ORDER BY LockboxID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbmstrN_1] TO [DYNGRP]
GO
