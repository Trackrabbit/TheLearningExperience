SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10420SS_1] (@Navigation_ID char(15), @Ribbon_Command_Group smallint, @Command_Number smallint, @Task_Number smallint) AS set nocount on SELECT TOP 1  Navigation_ID, Ribbon_Command_Group, Command_Number, Task_Number, Task_Sequence, Navigation_Task_Type, Navigation_Field_Name, Field_Value_From, Table_Number, Field_Number, STRGA255, DATE1, TIME1, TOTAL, fileName, Parameter_Product, Parameter_Name, Number_of_Seconds, DEX_ROW_ID FROM .NLB10420 WHERE Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number = @Command_Number AND Task_Number = @Task_Number ORDER BY Navigation_ID ASC, Ribbon_Command_Group ASC, Command_Number ASC, Task_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10420SS_1] TO [DYNGRP]
GO
