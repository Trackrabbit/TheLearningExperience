SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_IC40100SI] (@ORCOMID char(5), @DSTCOMID char(5), @ORGFRIDX int, @ORGTOIDX int, @DSTFRIDX int, @DSTTOIDX int, @USER2ENT char(15), @CREATDDT datetime, @MODIFDT datetime, @MDFUSRID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IC40100 (ORCOMID, DSTCOMID, ORGFRIDX, ORGTOIDX, DSTFRIDX, DSTTOIDX, USER2ENT, CREATDDT, MODIFDT, MDFUSRID) VALUES ( @ORCOMID, @DSTCOMID, @ORGFRIDX, @ORGTOIDX, @DSTFRIDX, @DSTTOIDX, @USER2ENT, @CREATDDT, @MODIFDT, @MDFUSRID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IC40100SI] TO [DYNGRP]
GO