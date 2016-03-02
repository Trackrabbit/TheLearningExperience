SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10400SS_1] (@Navigation_ID char(15), @Ribbon_Command_Group smallint, @Command_Number smallint) AS set nocount on SELECT TOP 1  Navigation_ID, Ribbon_Command_Group, Command_Number, Command_Description, Command_Type, PRODID, FORMNAME, fileName, Table_Number, Field_Number, PRCDNAME, Ribbon_Button_Size, Ribbon_Button_Priority, RPRTNAME, ASKECHTM, PRTOSCRN, PRTOPRTR, PRNTOFIL, FILEXPNM, XPRTFTYP, Action_Type, Drill_Down_ID, DEX_ROW_ID, TXTFIELD FROM .NLB10400 WHERE Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number = @Command_Number ORDER BY Navigation_ID ASC, Ribbon_Command_Group ASC, Command_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10400SS_1] TO [DYNGRP]
GO
