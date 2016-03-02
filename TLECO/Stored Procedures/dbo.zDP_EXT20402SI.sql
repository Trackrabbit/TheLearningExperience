SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20402SI] (@Extender_Event_ID int, @Action_Number smallint, @Condition_Number smallint, @Field_ID int, @Long_Field_Name char(101), @ExtenderActionCondition smallint, @STRGA255 char(255), @STRGB255 char(255), @From_Amount numeric(19,5), @To_Amount numeric(19,5), @From_Date datetime, @TODATE datetime, @From_Time datetime, @To_Time datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20402 (Extender_Event_ID, Action_Number, Condition_Number, Field_ID, Long_Field_Name, ExtenderActionCondition, STRGA255, STRGB255, From_Amount, To_Amount, From_Date, TODATE, From_Time, To_Time) VALUES ( @Extender_Event_ID, @Action_Number, @Condition_Number, @Field_ID, @Long_Field_Name, @ExtenderActionCondition, @STRGA255, @STRGB255, @From_Amount, @To_Amount, @From_Date, @TODATE, @From_Time, @To_Time) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20402SI] TO [DYNGRP]
GO
