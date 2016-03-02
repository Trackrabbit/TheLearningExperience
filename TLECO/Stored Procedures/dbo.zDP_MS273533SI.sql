SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273533SI] (@PRCHLDID char(15), @SalesOrderPayDep tinyint, @NDS_DeniedTrx tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273533 (PRCHLDID, SalesOrderPayDep, NDS_DeniedTrx) VALUES ( @PRCHLDID, @SalesOrderPayDep, @NDS_DeniedTrx) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273533SI] TO [DYNGRP]
GO
