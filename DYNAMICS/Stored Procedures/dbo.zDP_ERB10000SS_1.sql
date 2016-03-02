SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB10000SS_1] (@Excel_Report_ID char(15)) AS set nocount on SELECT TOP 1  Excel_Report_ID, Excel_Report_Name, View_Name, Create_Summary_Page, Consolidate_Report, PRODID, Series_Number, Publish_Option, Target_URL, Data_Connection_Filename, Data_Connection_Location, Excel_Report_Filename, Excel_Report_Location, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, Consolidate_Worksheet, Display_Total_Line, Pivot_Table_Column_Total, Pivot_Table_Row_Totals, Pivot_Table_Expansion, Excel_Report_Type, DEX_ROW_ID FROM .ERB10000 WHERE Excel_Report_ID = @Excel_Report_ID ORDER BY Excel_Report_ID ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB10000SS_1] TO [DYNGRP]
GO
