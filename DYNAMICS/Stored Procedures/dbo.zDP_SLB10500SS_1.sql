SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10500SS_1] (@SmartList_ID char(15), @GoTo_Number smallint, @Task_Number smallint) AS set nocount on SELECT TOP 1  SmartList_ID, GoTo_Number, Task_Number, Task_Sequence, SmartList_Task_Type, SmartList_Field_Name, Field_Value_From, Table_Number, Field_Number, STRGA255, DATE1, TIME1, TOTAL, fileName, Parameter_Product, Parameter_Name, Number_of_Seconds, DEX_ROW_ID FROM .SLB10500 WHERE SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND Task_Number = @Task_Number ORDER BY SmartList_ID ASC, GoTo_Number ASC, Task_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10500SS_1] TO [DYNGRP]
GO
