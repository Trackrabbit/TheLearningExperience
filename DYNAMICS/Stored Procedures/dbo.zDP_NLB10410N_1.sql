SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10410N_1] (@BS int, @Navigation_ID char(15), @Ribbon_Command_Group smallint, @Command_Number smallint, @Parameter_Name char(31), @Navigation_ID_RS char(15), @Ribbon_Command_Group_RS smallint, @Command_Number_RS smallint, @Parameter_Name_RS char(31), @Navigation_ID_RE char(15), @Ribbon_Command_Group_RE smallint, @Command_Number_RE smallint, @Parameter_Name_RE char(31)) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Ribbon_Command_Group, Command_Number, Parameter_Name, Table_Number, Field_Number, STRGA255, DEX_ROW_ID FROM .NLB10410 WHERE ( Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number = @Command_Number AND Parameter_Name > @Parameter_Name OR Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number > @Command_Number OR Navigation_ID = @Navigation_ID AND Ribbon_Command_Group > @Ribbon_Command_Group OR Navigation_ID > @Navigation_ID ) ORDER BY Navigation_ID ASC, Ribbon_Command_Group ASC, Command_Number ASC, Parameter_Name ASC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, Ribbon_Command_Group, Command_Number, Parameter_Name, Table_Number, Field_Number, STRGA255, DEX_ROW_ID FROM .NLB10410 WHERE Navigation_ID = @Navigation_ID_RS AND Ribbon_Command_Group BETWEEN @Ribbon_Command_Group_RS AND @Ribbon_Command_Group_RE AND Command_Number BETWEEN @Command_Number_RS AND @Command_Number_RE AND Parameter_Name BETWEEN @Parameter_Name_RS AND @Parameter_Name_RE AND ( Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number = @Command_Number AND Parameter_Name > @Parameter_Name OR Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number > @Command_Number OR Navigation_ID = @Navigation_ID AND Ribbon_Command_Group > @Ribbon_Command_Group OR Navigation_ID > @Navigation_ID ) ORDER BY Navigation_ID ASC, Ribbon_Command_Group ASC, Command_Number ASC, Parameter_Name ASC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Ribbon_Command_Group, Command_Number, Parameter_Name, Table_Number, Field_Number, STRGA255, DEX_ROW_ID FROM .NLB10410 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND Ribbon_Command_Group BETWEEN @Ribbon_Command_Group_RS AND @Ribbon_Command_Group_RE AND Command_Number BETWEEN @Command_Number_RS AND @Command_Number_RE AND Parameter_Name BETWEEN @Parameter_Name_RS AND @Parameter_Name_RE AND ( Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number = @Command_Number AND Parameter_Name > @Parameter_Name OR Navigation_ID = @Navigation_ID AND Ribbon_Command_Group = @Ribbon_Command_Group AND Command_Number > @Command_Number OR Navigation_ID = @Navigation_ID AND Ribbon_Command_Group > @Ribbon_Command_Group OR Navigation_ID > @Navigation_ID ) ORDER BY Navigation_ID ASC, Ribbon_Command_Group ASC, Command_Number ASC, Parameter_Name ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10410N_1] TO [DYNGRP]
GO
