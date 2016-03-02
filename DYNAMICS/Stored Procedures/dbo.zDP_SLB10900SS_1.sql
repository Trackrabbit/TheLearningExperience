SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10900SS_1] (@SmartList_ID char(15), @GoTo_Number smallint, @Parameter_Name char(31)) AS set nocount on SELECT TOP 1  SmartList_ID, GoTo_Number, Parameter_Name, Table_Number, Field_Number, DEX_ROW_ID FROM .SLB10900 WHERE SmartList_ID = @SmartList_ID AND GoTo_Number = @GoTo_Number AND Parameter_Name = @Parameter_Name ORDER BY SmartList_ID ASC, GoTo_Number ASC, Parameter_Name ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10900SS_1] TO [DYNGRP]
GO
