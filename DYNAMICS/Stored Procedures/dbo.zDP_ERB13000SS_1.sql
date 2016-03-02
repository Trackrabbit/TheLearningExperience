SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB13000SS_1] (@ERB_Type smallint, @Excel_Report_ID char(15), @Excel_Report_Role char(51)) AS set nocount on SELECT TOP 1  ERB_Type, Excel_Report_ID, Excel_Report_Role, Excel_Report_Permission, DEX_ROW_ID FROM .ERB13000 WHERE ERB_Type = @ERB_Type AND Excel_Report_ID = @Excel_Report_ID AND Excel_Report_Role = @Excel_Report_Role ORDER BY ERB_Type ASC, Excel_Report_ID ASC, Excel_Report_Role ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB13000SS_1] TO [DYNGRP]
GO
