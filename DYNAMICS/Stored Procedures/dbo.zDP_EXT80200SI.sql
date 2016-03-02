SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT80200SI] (@USERID char(15), @CMPANYID smallint, @Extender_Type smallint, @Extender_ID char(15), @Window_Number smallint, @Tag smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT80200 (USERID, CMPANYID, Extender_Type, Extender_ID, Window_Number, Tag) VALUES ( @USERID, @CMPANYID, @Extender_Type, @Extender_ID, @Window_Number, @Tag) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT80200SI] TO [DYNGRP]
GO
