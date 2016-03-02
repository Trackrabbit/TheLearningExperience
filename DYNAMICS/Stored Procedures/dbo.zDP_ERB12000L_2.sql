SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB12000L_2] (@Group_Report_Description_RS char(65), @Group_Report_Description_RE char(65)) AS set nocount on IF @Group_Report_Description_RS IS NULL BEGIN SELECT TOP 25  Group_Report_ID, Group_Report_Description, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .ERB12000 ORDER BY Group_Report_Description DESC, DEX_ROW_ID DESC END ELSE IF @Group_Report_Description_RS = @Group_Report_Description_RE BEGIN SELECT TOP 25  Group_Report_ID, Group_Report_Description, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .ERB12000 WHERE Group_Report_Description = @Group_Report_Description_RS ORDER BY Group_Report_Description DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Group_Report_ID, Group_Report_Description, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .ERB12000 WHERE Group_Report_Description BETWEEN @Group_Report_Description_RS AND @Group_Report_Description_RE ORDER BY Group_Report_Description DESC, DEX_ROW_ID DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB12000L_2] TO [DYNGRP]
GO