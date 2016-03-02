SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TX00101SI] (@TAXSCHID char(15), @TXSCHDSC char(31), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .TX00101 (TAXSCHID, TXSCHDSC, NOTEINDX) VALUES ( @TAXSCHID, @TXSCHDSC, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TX00101SI] TO [DYNGRP]
GO