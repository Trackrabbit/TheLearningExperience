SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY_SQL_OptionsSI] (@DATASCNM char(33), @CTRLLOGN tinyint, @CTRLUSER tinyint, @TRUNCLOG tinyint, @TRUNDATA tinyint, @SQLSPAR1 smallint, @SQLSPAR2 smallint, @SQLSPAR3 smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY_SQL_Options (DATASCNM, CTRLLOGN, CTRLUSER, TRUNCLOG, TRUNDATA, SQLSPAR1, SQLSPAR2, SQLSPAR3) VALUES ( @DATASCNM, @CTRLLOGN, @CTRLUSER, @TRUNCLOG, @TRUNDATA, @SQLSPAR1, @SQLSPAR2, @SQLSPAR3) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY_SQL_OptionsSI] TO [DYNGRP]
GO
