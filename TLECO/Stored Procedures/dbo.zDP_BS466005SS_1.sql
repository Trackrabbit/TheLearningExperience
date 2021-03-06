SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466005SS_1] (@VCHRNMBR char(21), @DOCTYPE smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  VCHRNMBR, DOCTYPE, BSSI_Description, BSSI_Charge_ID, NOTEINDX, DEX_ROW_ID FROM .BS466005 WHERE VCHRNMBR = @VCHRNMBR AND DOCTYPE = @DOCTYPE ORDER BY VCHRNMBR ASC, DOCTYPE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466005SS_1] TO [DYNGRP]
GO
