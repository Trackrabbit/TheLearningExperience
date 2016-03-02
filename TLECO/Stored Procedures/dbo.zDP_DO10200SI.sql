SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DO10200SI] (@RMDTYPAL smallint, @DOCNUMBR char(21), @EXPNDATE datetime, @doAUTHCODE char(51), @PROCESSELECTRONICALLY tinyint, @NextElectronicNumber int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .DO10200 (RMDTYPAL, DOCNUMBR, EXPNDATE, doAUTHCODE, PROCESSELECTRONICALLY, NextElectronicNumber) VALUES ( @RMDTYPAL, @DOCNUMBR, @EXPNDATE, @doAUTHCODE, @PROCESSELECTRONICALLY, @NextElectronicNumber) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DO10200SI] TO [DYNGRP]
GO
