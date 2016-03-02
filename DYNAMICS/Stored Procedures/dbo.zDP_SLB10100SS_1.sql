SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10100SS_1] (@SmartList_ID char(15), @Table_Number smallint) AS set nocount on SELECT TOP 1  SmartList_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Use_Current_Company, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID, TXTFIELD FROM .SLB10100 WHERE SmartList_ID = @SmartList_ID AND Table_Number = @Table_Number ORDER BY SmartList_ID ASC, Table_Number ASC set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10100SS_1] TO [DYNGRP]
GO
