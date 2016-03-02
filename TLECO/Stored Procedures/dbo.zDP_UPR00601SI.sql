SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00601SI] (@EMPLOYID char(15), @BENEFIT char(7), @BORCDTYP smallint, @BSDONCDE char(7), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR00601 (EMPLOYID, BENEFIT, BORCDTYP, BSDONCDE) VALUES ( @EMPLOYID, @BENEFIT, @BORCDTYP, @BSDONCDE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00601SI] TO [DYNGRP]
GO