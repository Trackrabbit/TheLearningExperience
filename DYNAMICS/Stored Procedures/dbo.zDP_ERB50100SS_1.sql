SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB50100SS_1] (@Excel_Report_Role char(51)) AS set nocount on SELECT TOP 1  Excel_Report_Role, Excel_Report_Permission, DEX_ROW_ID FROM .ERB50100 WHERE Excel_Report_Role = @Excel_Report_Role ORDER BY Excel_Report_Role ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB50100SS_1] TO [DYNGRP]
GO
