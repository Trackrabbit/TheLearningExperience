SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20405SI] (@Extender_Event_ID int, @Action_Number smallint, @Extender_Hot_Key char(1), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .EXT20405 (Extender_Event_ID, Action_Number, Extender_Hot_Key) VALUES ( @Extender_Event_ID, @Action_Number, @Extender_Hot_Key) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20405SI] TO [DYNGRP]
GO
