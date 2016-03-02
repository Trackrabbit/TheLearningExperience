SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_SLB80400SI] (@SERVERID char(81), @SQL_Database_Name char(81), @TBLPHYSNM char(51), @Object_Type smallint, @DEX_ROW_ID int OUT) AS set nocount on BEGIN INSERT INTO .SLB80400 (SERVERID, SQL_Database_Name, TBLPHYSNM, Object_Type) VALUES ( @SERVERID, @SQL_Database_Name, @TBLPHYSNM, @Object_Type) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_SLB80400SI] TO [DYNGRP]
GO