SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00225SI] (@ITEMNMBR char(31), @PRDLINE char(21), @PROBCDE char(11), @RPRCODE char(11), @NUMOFTRX int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00225 (ITEMNMBR, PRDLINE, PROBCDE, RPRCODE, NUMOFTRX) VALUES ( @ITEMNMBR, @PRDLINE, @PROBCDE, @RPRCODE, @NUMOFTRX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00225SI] TO [DYNGRP]
GO
