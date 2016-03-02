SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT60100SI] (@Setup_Option smallint, @Setup_CB tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT60100 (Setup_Option, Setup_CB) VALUES ( @Setup_Option, @Setup_CB) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT60100SI] TO [DYNGRP]
GO
