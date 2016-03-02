SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10500N_2] (@BS int, @SmartList_ID char(15), @GoTo_Number smallint, @Task_Sequence smallint, @DEX_ROW_ID int, @SmartList_ID_RS char(15), @GoTo_Number_RS smallint, @Task_Sequence_RS smallint, @SmartList_ID_RE char(15), @GoTo_Number_RE smallint, @Task_Sequence_RE smallint) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, Task_Number, Task_Sequence, SmartList_Task_Type, SmartList_Field_Name, Field_Value_From, Table_Number, Field_Number, STRGA255, DATE1, TIME1, TOTAL, fileName, Parameter_Product, Parameter_Name, Number_of_Seconds, DEX_ROW_ID FROM .SLB10500 WHERE ( SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND Task_Sequence = @Task_Sequence AND DEX_ROW_ID > @DEX_ROW_ID OR SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND Task_Sequence > @Task_Sequence OR SmartList_ID = @SmartList_ID AND GoTo_Number > @GoTo_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, GoTo_Number ASC, Task_Sequence ASC, DEX_ROW_ID ASC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, Task_Number, Task_Sequence, SmartList_Task_Type, SmartList_Field_Name, Field_Value_From, Table_Number, Field_Number, STRGA255, DATE1, TIME1, TOTAL, fileName, Parameter_Product, Parameter_Name, Number_of_Seconds, DEX_ROW_ID FROM .SLB10500 WHERE SmartList_ID = @SmartList_ID_RS AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND Task_Sequence BETWEEN @Task_Sequence_RS AND @Task_Sequence_RE AND ( SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND Task_Sequence = @Task_Sequence AND DEX_ROW_ID > @DEX_ROW_ID OR SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND Task_Sequence > @Task_Sequence OR SmartList_ID = @SmartList_ID AND GoTo_Number > @GoTo_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, GoTo_Number ASC, Task_Sequence ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SmartList_ID, GoTo_Number, Task_Number, Task_Sequence, SmartList_Task_Type, SmartList_Field_Name, Field_Value_From, Table_Number, Field_Number, STRGA255, DATE1, TIME1, TOTAL, fileName, Parameter_Product, Parameter_Name, Number_of_Seconds, DEX_ROW_ID FROM .SLB10500 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND GoTo_Number BETWEEN @GoTo_Number_RS AND @GoTo_Number_RE AND Task_Sequence BETWEEN @Task_Sequence_RS AND @Task_Sequence_RE AND ( SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND Task_Sequence = @Task_Sequence AND DEX_ROW_ID > @DEX_ROW_ID OR SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND Task_Sequence > @Task_Sequence OR SmartList_ID = @SmartList_ID AND GoTo_Number > @GoTo_Number OR SmartList_ID > @SmartList_ID ) ORDER BY SmartList_ID ASC, GoTo_Number ASC, Task_Sequence ASC, DEX_ROW_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10500N_2] TO [DYNGRP]
GO