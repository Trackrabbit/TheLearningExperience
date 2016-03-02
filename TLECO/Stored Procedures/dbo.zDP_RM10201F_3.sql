SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10201F_3] (@DOCDATE_RS datetime, @DOCNUMBR_RS char(21), @DOCDATE_RE datetime, @DOCNUMBR_RE char(21)) AS  set nocount on IF @DOCDATE_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, DOCNUMBR, CUSTNMBR, RMDTYPAL, DOCDATE, CSHRCTYP, CHEKNMBR, CHEKBKID, CRCARDID, DISAMCHK, CURNCYID, NDSTAMNT, TRXDSCRN, ONHOLD, POSTED, NOTEINDX, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, WROFAMNT, DISTKNAM, DISAVTKN, PPSAMDED, GSTDSAMT, RMTREMSG, RMDPEMSG, GLPOSTDT, RMTREMSG2, PSTGSTUS, EFTFLAG, DEX_ROW_ID FROM .RM10201 ORDER BY DOCDATE ASC, DOCNUMBR ASC END ELSE IF @DOCDATE_RS = @DOCDATE_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, DOCNUMBR, CUSTNMBR, RMDTYPAL, DOCDATE, CSHRCTYP, CHEKNMBR, CHEKBKID, CRCARDID, DISAMCHK, CURNCYID, NDSTAMNT, TRXDSCRN, ONHOLD, POSTED, NOTEINDX, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, WROFAMNT, DISTKNAM, DISAVTKN, PPSAMDED, GSTDSAMT, RMTREMSG, RMDPEMSG, GLPOSTDT, RMTREMSG2, PSTGSTUS, EFTFLAG, DEX_ROW_ID FROM .RM10201 WHERE DOCDATE = @DOCDATE_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY DOCDATE ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, DOCNUMBR, CUSTNMBR, RMDTYPAL, DOCDATE, CSHRCTYP, CHEKNMBR, CHEKBKID, CRCARDID, DISAMCHK, CURNCYID, NDSTAMNT, TRXDSCRN, ONHOLD, POSTED, NOTEINDX, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, WROFAMNT, DISTKNAM, DISAVTKN, PPSAMDED, GSTDSAMT, RMTREMSG, RMDPEMSG, GLPOSTDT, RMTREMSG2, PSTGSTUS, EFTFLAG, DEX_ROW_ID FROM .RM10201 WHERE DOCDATE BETWEEN @DOCDATE_RS AND @DOCDATE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY DOCDATE ASC, DOCNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10201F_3] TO [DYNGRP]
GO
