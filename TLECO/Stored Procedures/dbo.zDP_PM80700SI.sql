SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80700SI] (@VENDORID char(15), @VCHRNMBR char(21), @BACHNUMB char(15), @TAXDTLID char(15), @TAXAMNT numeric(19,5), @ORTAXAMT numeric(19,5), @ACTINDX int, @TRXSORCE char(13), @CURNCYID char(15), @CURRNIDX smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM80700 (VENDORID, VCHRNMBR, BACHNUMB, TAXDTLID, TAXAMNT, ORTAXAMT, ACTINDX, TRXSORCE, CURNCYID, CURRNIDX) VALUES ( @VENDORID, @VCHRNMBR, @BACHNUMB, @TAXDTLID, @TAXAMNT, @ORTAXAMT, @ACTINDX, @TRXSORCE, @CURNCYID, @CURRNIDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80700SI] TO [DYNGRP]
GO
