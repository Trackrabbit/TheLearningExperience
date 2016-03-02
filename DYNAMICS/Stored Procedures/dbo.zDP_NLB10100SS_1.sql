SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10100SS_1] (@Navigation_ID char(15), @Table_Number smallint) AS set nocount on SELECT TOP 1  Navigation_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Use_Current_Company, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID, TXTFIELD FROM .NLB10100 WHERE Navigation_ID = @Navigation_ID AND Table_Number = @Table_Number ORDER BY Navigation_ID ASC, Table_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10100SS_1] TO [DYNGRP]
GO
