SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB10100F_1] (@Navigation_ID_RS char(15), @Table_Number_RS smallint, @Navigation_ID_RE char(15), @Table_Number_RE smallint) AS set nocount on IF @Navigation_ID_RS IS NULL BEGIN SELECT TOP 25  Navigation_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Use_Current_Company, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID, TXTFIELD FROM .NLB10100 ORDER BY Navigation_ID ASC, Table_Number ASC END ELSE IF @Navigation_ID_RS = @Navigation_ID_RE BEGIN SELECT TOP 25  Navigation_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Use_Current_Company, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID, TXTFIELD FROM .NLB10100 WHERE Navigation_ID = @Navigation_ID_RS AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE ORDER BY Navigation_ID ASC, Table_Number ASC END ELSE BEGIN SELECT TOP 25  Navigation_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Use_Current_Company, Object_Type, Extender_Type, Extender_ID, DEX_ROW_ID, TXTFIELD FROM .NLB10100 WHERE Navigation_ID BETWEEN @Navigation_ID_RS AND @Navigation_ID_RE AND Table_Number BETWEEN @Table_Number_RS AND @Table_Number_RE ORDER BY Navigation_ID ASC, Table_Number ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB10100F_1] TO [DYNGRP]
GO
