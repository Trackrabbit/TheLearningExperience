SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10410SS_1] (@Navigation_ID char(15), @Ribbon_Command_Group smallint, @Command_Number smallint, @Parameter_Name char(31)) AS set nocount on SELECT TOP 1  Navigation_ID, Ribbon_Command_Group, Command_Number, Parameter_Name, Table_Number, Field_Number, STRGA255, DEX_ROW_ID FROM .NLB10410 WHERE Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number = @Command_Number AND Parameter_Name = @Parameter_Name ORDER BY Navigation_ID ASC, Ribbon_Command_Group ASC, Command_Number ASC, Parameter_Name ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10410SS_1] TO [DYNGRP]
GO
