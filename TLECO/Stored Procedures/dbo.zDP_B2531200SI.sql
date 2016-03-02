SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2531200SI] (@VENDORID char(15), @PARVENID char(15), @BS25_Transmission_Method smallint, @BS25_TradeDiscount smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .B2531200 (VENDORID, PARVENID, BS25_Transmission_Method, BS25_TradeDiscount) VALUES ( @VENDORID, @PARVENID, @BS25_Transmission_Method, @BS25_TradeDiscount) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2531200SI] TO [DYNGRP]
GO
