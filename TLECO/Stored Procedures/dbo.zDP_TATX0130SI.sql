SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TATX0130SI] (@TRXSORCE char(13), @TRX_I int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TATX0130 (TRXSORCE, TRX_I) VALUES ( @TRXSORCE, @TRX_I) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TATX0130SI] TO [DYNGRP]
GO
