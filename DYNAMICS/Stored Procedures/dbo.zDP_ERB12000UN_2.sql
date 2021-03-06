SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB12000UN_2] (@BS int, @Group_Report_Description char(65), @Group_Report_Description_RS char(65), @Group_Report_Description_RE char(65)) AS set nocount on IF @Group_Report_Description_RS IS NULL BEGIN SELECT TOP 25  Group_Report_ID, Group_Report_Description, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .ERB12000 WHERE ( Group_Report_Description > @Group_Report_Description ) ORDER BY Group_Report_Description ASC, DEX_ROW_ID ASC END ELSE IF @Group_Report_Description_RS = @Group_Report_Description_RE BEGIN SELECT TOP 25  Group_Report_ID, Group_Report_Description, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .ERB12000 WHERE Group_Report_Description = @Group_Report_Description_RS AND ( Group_Report_Description > @Group_Report_Description ) ORDER BY Group_Report_Description ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  Group_Report_ID, Group_Report_Description, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .ERB12000 WHERE Group_Report_Description BETWEEN @Group_Report_Description_RS AND @Group_Report_Description_RE AND ( Group_Report_Description > @Group_Report_Description ) ORDER BY Group_Report_Description ASC, DEX_ROW_ID ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB12000UN_2] TO [DYNGRP]
GO
