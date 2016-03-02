SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY09100SI] (@SECURITYROLEID char(25), @SECURITYROLENAME char(51), @SECURITYROLEDESC char(255), @SECROLETYPE smallint, @CRUSRID char(15), @CREATDDT datetime, @MDFUSRID char(15), @MODIFDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY09100 (SECURITYROLEID, SECURITYROLENAME, SECURITYROLEDESC, SECROLETYPE, CRUSRID, CREATDDT, MDFUSRID, MODIFDT) VALUES ( @SECURITYROLEID, @SECURITYROLENAME, @SECURITYROLEDESC, @SECROLETYPE, @CRUSRID, @CREATDDT, @MDFUSRID, @MODIFDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY09100SI] TO [DYNGRP]
GO
