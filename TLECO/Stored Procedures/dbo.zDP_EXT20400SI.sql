SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20400SI] (@Extender_Event_ID int, @Extender_Type smallint, @Extender_ID char(15), @Extender_Event_Type smallint, @Field_ID int, @Extender_Event_Desc char(255), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20400 (Extender_Event_ID, Extender_Type, Extender_ID, Extender_Event_Type, Field_ID, Extender_Event_Desc) VALUES ( @Extender_Event_ID, @Extender_Type, @Extender_ID, @Extender_Event_Type, @Field_ID, @Extender_Event_Desc) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20400SI] TO [DYNGRP]
GO
