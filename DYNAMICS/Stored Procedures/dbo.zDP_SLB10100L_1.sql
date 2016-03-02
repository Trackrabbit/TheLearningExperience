SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB10100L_1] (@SmartList_ID_RS char(15), @Table_Number_RS smallint, @SmartList_ID_RE char(15), @Table_Number_RE smallint) AS set nocount on IF @SmartList_ID_RS IS NULL BEGIN SELECT TOP 25  SmartList_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Use_Current_Company, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID, TXTFIELD FROM .SLB10100 ORDER BY SmartList_ID DESC, Table_Number DESC END ELSE IF @SmartList_ID_RS = @SmartList_ID_RE BEGIN SELECT TOP 25  SmartList_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Use_Current_Company, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID, TXTFIELD FROM .SLB10100 WHERE SmartList_ID = @SmartList_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE ORDER BY SmartList_ID DESC, Table_Number DESC END ELSE BEGIN SELECT TOP 25  SmartList_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Use_Current_Company, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID, TXTFIELD FROM .SLB10100 WHERE SmartList_ID BETWEEN @SmartList_ID_RS AND @SmartList_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE ORDER BY SmartList_ID DESC, Table_Number DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB10100L_1] TO [DYNGRP]
GO
