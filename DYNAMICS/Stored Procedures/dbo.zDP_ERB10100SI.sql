SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB10100SI] (@Excel_Report_ID char(15), @Table_Number smallint, @PRODID smallint, @TABLTECH char(79), @Link_To_Table smallint, @Link_Method smallint, @External_Table tinyint, @DBNAME char(11), @TBLPHYSNM char(51), @SERVERID char(81), @SQL_Database_Name char(81), @DBO_Name char(81), @Object_Type smallint, @Extender_Type smallint, @Extender_ID char(15), @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .ERB10100 (Excel_Report_ID, Table_Number, PRODID, TABLTECH, Link_To_Table, Link_Method, External_Table, DBNAME, TBLPHYSNM, SERVERID, SQL_Database_Name, DBO_Name, Object_Type, Extender_Type, Extender_ID) VALUES ( @Excel_Report_ID, @Table_Number, @PRODID, @TABLTECH, @Link_To_Table, @Link_Method, @External_Table, @DBNAME, @TBLPHYSNM, @SERVERID, @SQL_Database_Name, @DBO_Name, @Object_Type, @Extender_Type, @Extender_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB10100SI] TO [DYNGRP]
GO
