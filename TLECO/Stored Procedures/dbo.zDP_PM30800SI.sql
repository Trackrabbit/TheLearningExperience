SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM30800SI] (@VENDORID char(15), @VCHRNMBR char(21), @DOCTYPE smallint, @DOCNUMBR char(21), @POPRCTNM char(17), @Tax_Date datetime, @TaxInvRecvd tinyint, @GSTDSAMT numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM30800 (VENDORID, VCHRNMBR, DOCTYPE, DOCNUMBR, POPRCTNM, Tax_Date, TaxInvRecvd, GSTDSAMT) VALUES ( @VENDORID, @VCHRNMBR, @DOCTYPE, @DOCNUMBR, @POPRCTNM, @Tax_Date, @TaxInvRecvd, @GSTDSAMT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM30800SI] TO [DYNGRP]
GO
