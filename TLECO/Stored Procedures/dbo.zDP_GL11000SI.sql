SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL11000SI] (@BACHNUMB char(15), @ACTINDX int, @TRXAMNT numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL11000 (BACHNUMB, ACTINDX, TRXAMNT) VALUES ( @BACHNUMB, @ACTINDX, @TRXAMNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL11000SI] TO [DYNGRP]
GO