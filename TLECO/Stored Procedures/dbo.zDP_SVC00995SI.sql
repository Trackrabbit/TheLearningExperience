SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00995SI] (@OFFID char(11), @ENTDTE datetime, @ENTTME datetime, @ESCSTATUS char(41), @TRXQTY numeric(19,5), @WAITTME int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00995 (OFFID, ENTDTE, ENTTME, ESCSTATUS, TRXQTY, WAITTME) VALUES ( @OFFID, @ENTDTE, @ENTTME, @ESCSTATUS, @TRXQTY, @WAITTME) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00995SI] TO [DYNGRP]
GO
