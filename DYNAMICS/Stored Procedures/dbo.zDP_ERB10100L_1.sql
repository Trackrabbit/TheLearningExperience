SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB10100L_1] (@Excel_Report_ID_RS char(15), @Table_Number_RS smallint, @Excel_Report_ID_RE char(15), @Table_Number_RE smallint) AS set nocount on IF @Excel_Report_ID_RS IS NULL BEGIN SELECT TOP 25  Excel_Report_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID FROM .ERB10100 ORDER BY Excel_Report_ID DESC, Table_Number DESC END ELSE IF @Excel_Report_ID_RS = @Excel_Report_ID_RE BEGIN SELECT TOP 25  Excel_Report_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID FROM .ERB10100 WHERE Excel_Report_ID = @Excel_Report_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE ORDER BY Excel_Report_ID DESC, Table_Number DESC END ELSE BEGIN SELECT TOP 25  Excel_Report_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID FROM .ERB10100 WHERE Excel_Report_ID BETWEEN @Excel_Report_ID_RS AND @Excel_Report_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE ORDER BY Excel_Report_ID DESC, Table_Number DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB10100L_1] TO [DYNGRP]
GO
