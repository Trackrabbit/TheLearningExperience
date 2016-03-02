SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_DDB10200SI] (@Drill_Down_ID char(15), @Action_Number smallint, @Action_Type smallint, @FIELDNAM char(31), @RCRDTYPE smallint, @Window_Number smallint, @Field_Number smallint, @Drill_Down_Parameter_Num smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .DDB10200 (Drill_Down_ID, Action_Number, Action_Type, FIELDNAM, RCRDTYPE, Window_Number, Field_Number, Drill_Down_Parameter_Num) VALUES ( @Drill_Down_ID, @Action_Number, @Action_Type, @FIELDNAM, @RCRDTYPE, @Window_Number, @Field_Number, @Drill_Down_Parameter_Num) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_DDB10200SI] TO [DYNGRP]
GO
