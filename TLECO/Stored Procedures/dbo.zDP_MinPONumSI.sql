SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MinPONumSI] (@PONUMBER char(17), @RCPTNMBR char(21), @Never_Default_Previous tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .MinPONum (PONUMBER, RCPTNMBR, Never_Default_Previous) VALUES ( @PONUMBER, @RCPTNMBR, @Never_Default_Previous) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MinPONumSI] TO [DYNGRP]
GO
