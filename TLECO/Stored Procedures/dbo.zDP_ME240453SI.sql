SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240453SI] (@CHEKBKID char(15), @ME_Signature_ID char(15), @ME_Signature_Threshhold1 numeric(19,5), @ME_Signature_Threshhold2 numeric(19,5), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ME240453 (CHEKBKID, ME_Signature_ID, ME_Signature_Threshhold1, ME_Signature_Threshhold2) VALUES ( @CHEKBKID, @ME_Signature_ID, @ME_Signature_Threshhold1, @ME_Signature_Threshhold2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240453SI] TO [DYNGRP]
GO
