SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gp_po_costSI] (@SETUPKEY smallint, @gpcost smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .gp_po_cost (SETUPKEY, gpcost) VALUES ( @SETUPKEY, @gpcost) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gp_po_costSI] TO [DYNGRP]
GO
