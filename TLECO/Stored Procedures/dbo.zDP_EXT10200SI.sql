SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT10200SI] (@Lookup_Number int, @Extender_Type smallint, @Extender_ID char(15), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT10200 (Lookup_Number, Extender_Type, Extender_ID) VALUES ( @Lookup_Number, @Extender_Type, @Extender_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT10200SI] TO [DYNGRP]
GO
