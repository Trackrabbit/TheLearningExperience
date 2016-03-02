SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10500SI] (@SmartList_ID char(15), @GoTo_Number smallint, @Task_Number smallint, @Task_Sequence smallint, @SmartList_Task_Type smallint, @SmartList_Field_Name char(81), @Field_Value_From smallint, @Table_Number smallint, @Field_Number smallint, @STRGA255 char(255), @DATE1 datetime, @TIME1 datetime, @TOTAL numeric(19,5), @fileName char(255), @Parameter_Product smallint, @Parameter_Name char(31), @Number_of_Seconds smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB10500 (SmartList_ID, GoTo_Number, Task_Number, Task_Sequence, SmartList_Task_Type, SmartList_Field_Name, Field_Value_From, Table_Number, Field_Number, STRGA255, DATE1, TIME1, TOTAL, fileName, Parameter_Product, Parameter_Name, Number_of_Seconds) VALUES ( @SmartList_ID, @GoTo_Number, @Task_Number, @Task_Sequence, @SmartList_Task_Type, @SmartList_Field_Name, @Field_Value_From, @Table_Number, @Field_Number, @STRGA255, @DATE1, @TIME1, @TOTAL, @fileName, @Parameter_Product, @Parameter_Name, @Number_of_Seconds) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10500SI] TO [DYNGRP]
GO
