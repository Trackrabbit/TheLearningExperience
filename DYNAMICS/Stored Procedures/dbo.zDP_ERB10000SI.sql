SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB10000SI] (@Excel_Report_ID char(15), @Excel_Report_Name char(65), @View_Name char(65), @Create_Summary_Page tinyint, @Consolidate_Report tinyint, @PRODID smallint, @Series_Number smallint, @Publish_Option smallint, @Target_URL char(255), @Data_Connection_Filename char(65), @Data_Connection_Location char(255), @Excel_Report_Filename char(65), @Excel_Report_Location char(255), @NOTEINDX numeric(19,5), @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @MDFUSRID char(15), @Consolidate_Worksheet tinyint, @Display_Total_Line tinyint, @Pivot_Table_Column_Total tinyint, @Pivot_Table_Row_Totals tinyint, @Pivot_Table_Expansion tinyint, @Excel_Report_Type smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB10000 (Excel_Report_ID, Excel_Report_Name, View_Name, Create_Summary_Page, Consolidate_Report, PRODID, Series_Number, Publish_Option, Target_URL, Data_Connection_Filename, Data_Connection_Location, Excel_Report_Filename, Excel_Report_Location, NOTEINDX, CREATDDT, CRUSRID, MODIFDT, MDFUSRID, Consolidate_Worksheet, Display_Total_Line, Pivot_Table_Column_Total, Pivot_Table_Row_Totals, Pivot_Table_Expansion, Excel_Report_Type) VALUES ( @Excel_Report_ID, @Excel_Report_Name, @View_Name, @Create_Summary_Page, @Consolidate_Report, @PRODID, @Series_Number, @Publish_Option, @Target_URL, @Data_Connection_Filename, @Data_Connection_Location, @Excel_Report_Filename, @Excel_Report_Location, @NOTEINDX, @CREATDDT, @CRUSRID, @MODIFDT, @MDFUSRID, @Consolidate_Worksheet, @Display_Total_Line, @Pivot_Table_Column_Total, @Pivot_Table_Row_Totals, @Pivot_Table_Expansion, @Excel_Report_Type) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB10000SI] TO [DYNGRP]
GO
