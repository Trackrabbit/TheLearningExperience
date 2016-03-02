SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466005SI] (@VCHRNMBR char(21), @DOCTYPE smallint, @BSSI_Description char(51), @BSSI_Charge_ID char(25), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .BS466005 (VCHRNMBR, DOCTYPE, BSSI_Description, BSSI_Charge_ID, NOTEINDX) VALUES ( @VCHRNMBR, @DOCTYPE, @BSSI_Description, @BSSI_Charge_ID, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466005SI] TO [DYNGRP]
GO