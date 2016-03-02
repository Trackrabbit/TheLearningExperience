SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10420SI] (@Navigation_ID char(15), @Ribbon_Command_Group smallint, @Command_Number smallint, @Task_Number smallint, @Task_Sequence smallint, @Navigation_Task_Type smallint, @Navigation_Field_Name char(81), @Field_Value_From smallint, @Table_Number smallint, @Field_Number smallint, @STRGA255 char(255), @DATE1 datetime, @TIME1 datetime, @TOTAL numeric(19,5), @fileName char(255), @Parameter_Product smallint, @Parameter_Name char(31), @Number_of_Seconds smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .NLB10420 (Navigation_ID, Ribbon_Command_Group, Command_Number, Task_Number, Task_Sequence, Navigation_Task_Type, Navigation_Field_Name, Field_Value_From, Table_Number, Field_Number, STRGA255, DATE1, TIME1, TOTAL, fileName, Parameter_Product, Parameter_Name, Number_of_Seconds) VALUES ( @Navigation_ID, @Ribbon_Command_Group, @Command_Number, @Task_Number, @Task_Sequence, @Navigation_Task_Type, @Navigation_Field_Name, @Field_Value_From, @Table_Number, @Field_Number, @STRGA255, @DATE1, @TIME1, @TOTAL, @fileName, @Parameter_Product, @Parameter_Name, @Number_of_Seconds) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10420SI] TO [DYNGRP]
GO
