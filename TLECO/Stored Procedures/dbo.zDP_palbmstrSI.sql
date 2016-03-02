SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbmstrSI] (@LockboxID char(15), @LockboxDescription char(31), @paLockboxFormatType smallint, @STRGA255 char(255), @LockboxFileName char(61), @XPRTFTYP smallint, @CHEKBKID char(15), @paApplyMethod smallint, @paApplyMethodInvoice smallint, @DECPLCUR smallint, @OmitStartRecords int, @OmitLastRecords int, @paHeaderRowIndicator char(11), @paDeailRowIndicator char(11), @NOTEINDX numeric(19,5), @CREATDDT datetime, @MODIFDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .palbmstr (LockboxID, LockboxDescription, paLockboxFormatType, STRGA255, LockboxFileName, XPRTFTYP, CHEKBKID, paApplyMethod, paApplyMethodInvoice, DECPLCUR, OmitStartRecords, OmitLastRecords, paHeaderRowIndicator, paDeailRowIndicator, NOTEINDX, CREATDDT, MODIFDT) VALUES ( @LockboxID, @LockboxDescription, @paLockboxFormatType, @STRGA255, @LockboxFileName, @XPRTFTYP, @CHEKBKID, @paApplyMethod, @paApplyMethodInvoice, @DECPLCUR, @OmitStartRecords, @OmitLastRecords, @paHeaderRowIndicator, @paDeailRowIndicator, @NOTEINDX, @CREATDDT, @MODIFDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbmstrSI] TO [DYNGRP]
GO
