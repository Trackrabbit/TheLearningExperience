SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM40102SI] (@UNIQKEY char(1), @NXTRNNMBR int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .RM40102 (UNIQKEY, NXTRNNMBR) VALUES ( @UNIQKEY, @NXTRNNMBR) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM40102SI] TO [DYNGRP]
GO
