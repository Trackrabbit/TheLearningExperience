SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10309SI] (@PYRLCTYP smallint, @PYRLCNBR int, @USERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR10309 (PYRLCTYP, PYRLCNBR, USERID) VALUES ( @PYRLCTYP, @PYRLCNBR, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10309SI] TO [DYNGRP]
GO
