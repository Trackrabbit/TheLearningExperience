SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20404SI] (@Extender_Event_ID int, @Action_Number smallint, @Extender_Trx_Option smallint, @Extender_Trx_Value_Type smallint, @Field_ID int, @STRGA255 char(255), @TOTAL numeric(19,5), @DATE1 datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20404 (Extender_Event_ID, Action_Number, Extender_Trx_Option, Extender_Trx_Value_Type, Field_ID, STRGA255, TOTAL, DATE1) VALUES ( @Extender_Event_ID, @Action_Number, @Extender_Trx_Option, @Extender_Trx_Value_Type, @Field_ID, @STRGA255, @TOTAL, @DATE1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20404SI] TO [DYNGRP]
GO
