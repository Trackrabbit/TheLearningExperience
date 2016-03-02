SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20403SI] (@Extender_Event_ID int, @Action_Number smallint, @LNITMSEQ int, @Field_ID int, @Set_Value_Type smallint, @Field_ID_2 int, @STRGA255 char(255), @TOTAL numeric(19,5), @DATE1 datetime, @TIME1 datetime, @Action_Task_Type smallint, @Long_Field_Name char(101), @Long_Field_Name_2 char(101), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .EXT20403 (Extender_Event_ID, Action_Number, LNITMSEQ, Field_ID, Set_Value_Type, Field_ID_2, STRGA255, TOTAL, DATE1, TIME1, Action_Task_Type, Long_Field_Name, Long_Field_Name_2) VALUES ( @Extender_Event_ID, @Action_Number, @LNITMSEQ, @Field_ID, @Set_Value_Type, @Field_ID_2, @STRGA255, @TOTAL, @DATE1, @TIME1, @Action_Task_Type, @Long_Field_Name, @Long_Field_Name_2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20403SI] TO [DYNGRP]
GO
