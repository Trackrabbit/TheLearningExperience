SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10201SS_2] (@CUSTNMBR char(15), @DOCNUMBR char(21)) AS  set nocount on SELECT TOP 1  BACHNUMB, BCHSOURC, DOCNUMBR, CUSTNMBR, RMDTYPAL, DOCDATE, CSHRCTYP, CHEKNMBR, CHEKBKID, CRCARDID, DISAMCHK, CURNCYID, NDSTAMNT, TRXDSCRN, ONHOLD, POSTED, NOTEINDX, LSTEDTDT, LSTUSRED, ORTRXAMT, CURTRXAM, WROFAMNT, DISTKNAM, DISAVTKN, PPSAMDED, GSTDSAMT, RMTREMSG, RMDPEMSG, GLPOSTDT, RMTREMSG2, PSTGSTUS, EFTFLAG, DEX_ROW_ID FROM .RM10201 WHERE CUSTNMBR = @CUSTNMBR AND DOCNUMBR = @DOCNUMBR ORDER BY CUSTNMBR ASC, DOCNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10201SS_2] TO [DYNGRP]
GO