SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90102SI] (@PRODID smallint, @Resource_Type smallint, @Series_Number smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .EXT90102 (PRODID, Resource_Type, Series_Number) VALUES ( @PRODID, @Resource_Type, @Series_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90102SI] TO [DYNGRP]
GO
