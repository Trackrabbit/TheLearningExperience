SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10211SI] (@PYRNTYPE smallint, @BLDCHDID char(15), @PYRLRTYP smallint, @PAYROLCD char(7), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR10211 (PYRNTYPE, BLDCHDID, PYRLRTYP, PAYROLCD) VALUES ( @PYRNTYPE, @BLDCHDID, @PYRLRTYP, @PAYROLCD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10211SI] TO [DYNGRP]
GO