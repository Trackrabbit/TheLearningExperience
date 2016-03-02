SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB10100SS_1] (@Excel_Report_ID char(15), @Table_Number smallint) AS set nocount on SELECT TOP 1  Excel_Report_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID FROM .ERB10100 WHERE Excel_Report_ID = @Excel_Report_ID AND Table_Number = @Table_Number ORDER BY Excel_Report_ID ASC, Table_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB10100SS_1] TO [DYNGRP]
GO
