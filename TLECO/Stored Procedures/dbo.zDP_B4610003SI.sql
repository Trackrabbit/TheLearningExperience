SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4610003SI] (@BSSI_SICCode char(31), @DSCRIPTN char(31), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4610003 (BSSI_SICCode, DSCRIPTN, NOTEINDX) VALUES ( @BSSI_SICCode, @DSCRIPTN, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4610003SI] TO [DYNGRP]
GO
