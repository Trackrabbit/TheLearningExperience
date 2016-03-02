SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY03100F_1] (@CARDNAME_RS char(15), @CARDNAME_RE char(15)) AS  set nocount on IF @CARDNAME_RS IS NULL BEGIN SELECT TOP 25  PYBLGRBX, RCVBGRBX, CARDNAME, CBPAYBLE, CBRCVBLE, CKBKNUM1, CKBKNUM2, ACTINDX, VENDORID, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY03100 ORDER BY CARDNAME ASC END ELSE IF @CARDNAME_RS = @CARDNAME_RE BEGIN SELECT TOP 25  PYBLGRBX, RCVBGRBX, CARDNAME, CBPAYBLE, CBRCVBLE, CKBKNUM1, CKBKNUM2, ACTINDX, VENDORID, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY03100 WHERE CARDNAME = @CARDNAME_RS ORDER BY CARDNAME ASC END ELSE BEGIN SELECT TOP 25  PYBLGRBX, RCVBGRBX, CARDNAME, CBPAYBLE, CBRCVBLE, CKBKNUM1, CKBKNUM2, ACTINDX, VENDORID, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY03100 WHERE CARDNAME BETWEEN @CARDNAME_RS AND @CARDNAME_RE ORDER BY CARDNAME ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03100F_1] TO [DYNGRP]
GO
