SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM40201SI] (@INDEX1 smallint, @RMPERDSC char(15), @RMPEREND smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .RM40201 (INDEX1, RMPERDSC, RMPEREND) VALUES ( @INDEX1, @RMPERDSC, @RMPEREND) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM40201SI] TO [DYNGRP]
GO