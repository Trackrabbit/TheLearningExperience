SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ASITAB30SI] (@Language_ID smallint, @STRTYPE smallint, @UNTRSVAL char(51), @TRANSVAL char(51), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .ASITAB30 (Language_ID, STRTYPE, UNTRSVAL, TRANSVAL) VALUES ( @Language_ID, @STRTYPE, @UNTRSVAL, @TRANSVAL) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ASITAB30SI] TO [DYNGRP]
GO
