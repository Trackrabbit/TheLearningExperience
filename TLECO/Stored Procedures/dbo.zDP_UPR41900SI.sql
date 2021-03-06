SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR41900SI] (@EARNINGSCODE char(15), @DSCRIPTN char(31), @SFRFEDTX tinyint, @SHFRFICA tinyint, @SHFRSTTX tinyint, @SFRLCLTX tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR41900 (EARNINGSCODE, DSCRIPTN, SFRFEDTX, SHFRFICA, SHFRSTTX, SFRLCLTX, NOTEINDX) VALUES ( @EARNINGSCODE, @DSCRIPTN, @SFRFEDTX, @SHFRFICA, @SHFRSTTX, @SFRLCLTX, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR41900SI] TO [DYNGRP]
GO
