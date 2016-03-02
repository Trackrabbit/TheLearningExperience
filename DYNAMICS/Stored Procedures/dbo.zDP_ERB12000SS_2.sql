SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB12000SS_2] (@Group_Report_Description char(65)) AS set nocount on SELECT TOP 1  Group_Report_ID, Group_Report_Description, NOTEINDX, MODIFDT, MDFUSRID, CREATDDT, CRUSRID, DEX_ROW_ID FROM .ERB12000 WHERE Group_Report_Description = @Group_Report_Description ORDER BY Group_Report_Description ASC, DEX_ROW_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB12000SS_2] TO [DYNGRP]
GO
