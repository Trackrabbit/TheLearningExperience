SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7123100SS_1] (@DOCTYPE smallint, @VCHRNMBR char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  DOCTYPE, VCHRNMBR, BSSI_RecogScheduleCancel, BSSI_ckDeferral_Trx, DEX_ROW_ID FROM .B7123100 WHERE DOCTYPE = @DOCTYPE AND VCHRNMBR = @VCHRNMBR ORDER BY DOCTYPE ASC, VCHRNMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7123100SS_1] TO [DYNGRP]
GO