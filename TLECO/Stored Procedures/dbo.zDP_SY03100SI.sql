SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY03100SI] (@PYBLGRBX smallint, @RCVBGRBX smallint, @CARDNAME char(15), @CBPAYBLE tinyint, @CBRCVBLE tinyint, @CKBKNUM1 char(15), @CKBKNUM2 char(15), @ACTINDX int, @VENDORID char(15), @NOTEINDX numeric(19,5), @LSTUSRED char(15), @CREATDDT datetime, @MODIFDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY03100 (PYBLGRBX, RCVBGRBX, CARDNAME, CBPAYBLE, CBRCVBLE, CKBKNUM1, CKBKNUM2, ACTINDX, VENDORID, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT) VALUES ( @PYBLGRBX, @RCVBGRBX, @CARDNAME, @CBPAYBLE, @CBRCVBLE, @CKBKNUM1, @CKBKNUM2, @ACTINDX, @VENDORID, @NOTEINDX, @LSTUSRED, @CREATDDT, @MODIFDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03100SI] TO [DYNGRP]
GO