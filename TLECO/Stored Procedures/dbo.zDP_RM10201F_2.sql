SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10201F_2] (@CUSTNMBR_RS char(15), @DOCNUMBR_RS char(21), @CUSTNMBR_RE char(15), @DOCNUMBR_RE char(21)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, DOCNUMBR, CUSTNMBR, RMDTYPAL, DOCDATE, CSHRCTYP, CHEKNMBR, CHEKBKID, CRCARDID, DISAMCHK, CURNCYID, NDSTAMNT, TRXDSCRN, ONHOLD, POSTED, NOTEINDX, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, WROFAMNT, DISTKNAM, DISAVTKN, PPSAMDED, GSTDSAMT, RMTREMSG, RMDPEMSG, GLPOSTDT, RMTREMSG2, PSTGSTUS, EFTFLAG, DEX_ROW_ID FROM .RM10201 ORDER BY CUSTNMBR ASC, DOCNUMBR ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, DOCNUMBR, CUSTNMBR, RMDTYPAL, DOCDATE, CSHRCTYP, CHEKNMBR, CHEKBKID, CRCARDID, DISAMCHK, CURNCYID, NDSTAMNT, TRXDSCRN, ONHOLD, POSTED, NOTEINDX, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, WROFAMNT, DISTKNAM, DISAVTKN, PPSAMDED, GSTDSAMT, RMTREMSG, RMDPEMSG, GLPOSTDT, RMTREMSG2, PSTGSTUS, EFTFLAG, DEX_ROW_ID FROM .RM10201 WHERE CUSTNMBR = @CUSTNMBR_RS AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY CUSTNMBR ASC, DOCNUMBR ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, BCHSOURC, DOCNUMBR, CUSTNMBR, RMDTYPAL, DOCDATE, CSHRCTYP, CHEKNMBR, CHEKBKID, CRCARDID, DISAMCHK, CURNCYID, NDSTAMNT, TRXDSCRN, ONHOLD, POSTED, NOTEINDX, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, WROFAMNT, DISTKNAM, DISAVTKN, PPSAMDED, GSTDSAMT, RMTREMSG, RMDPEMSG, GLPOSTDT, RMTREMSG2, PSTGSTUS, EFTFLAG, DEX_ROW_ID FROM .RM10201 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE ORDER BY CUSTNMBR ASC, DOCNUMBR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10201F_2] TO [DYNGRP]
GO
