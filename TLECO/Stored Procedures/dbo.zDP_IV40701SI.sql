SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40701SI] (@LOCNCODE char(11), @BIN char(15), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV40701 (LOCNCODE, BIN, NOTEINDX) VALUES ( @LOCNCODE, @BIN, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40701SI] TO [DYNGRP]
GO
