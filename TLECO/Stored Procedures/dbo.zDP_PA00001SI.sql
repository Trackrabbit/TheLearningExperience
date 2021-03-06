SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA00001SI] (@CUSTNMBR char(15), @VENDORID char(15), @CURNCYID char(15), @RATETPID char(15), @CREATDDT datetime, @CRUSRID char(15), @MODIFDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PA00001 (CUSTNMBR, VENDORID, CURNCYID, RATETPID, CREATDDT, CRUSRID, MODIFDT) VALUES ( @CUSTNMBR, @VENDORID, @CURNCYID, @RATETPID, @CREATDDT, @CRUSRID, @MODIFDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA00001SI] TO [DYNGRP]
GO
