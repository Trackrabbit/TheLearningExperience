SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7123100SI] (@DOCTYPE smallint, @VCHRNMBR char(21), @BSSI_RecogScheduleCancel tinyint, @BSSI_ckDeferral_Trx tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7123100 (DOCTYPE, VCHRNMBR, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx) VALUES ( @DOCTYPE, @VCHRNMBR, @BSSI_RecogScheduleCancel, @BSSI_ckDeferral_Trx) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7123100SI] TO [DYNGRP]
GO
