SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2530400SI] (@USERID char(15), @DOCTYPE smallint, @VCHRNMBR char(21), @VENDORID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B2530400 (USERID, DOCTYPE, VCHRNMBR, VENDORID) VALUES ( @USERID, @DOCTYPE, @VCHRNMBR, @VENDORID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2530400SI] TO [DYNGRP]
GO
