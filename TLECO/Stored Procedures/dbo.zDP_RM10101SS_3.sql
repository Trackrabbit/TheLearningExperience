SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM10101SS_3] (@TRXSORCE char(13), @DSTINDX int, @RMDTYPAL smallint, @DOCNUMBR char(21)) AS  set nocount on SELECT TOP 1  TRXSORCE, POSTED, POSTEDDT, PSTGSTUS, CHANGED, DOCNUMBR, DCSTATUS, DISTTYPE, RMDTYPAL, SEQNUMBR, CUSTNMBR, DSTINDX, DEBITAMT, CRDTAMNT, PROJCTID, USERID, CATEGUSD, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, DistRef, DEX_ROW_ID FROM .RM10101 WHERE TRXSORCE = @TRXSORCE AND DSTINDX = @DSTINDX AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR ORDER BY TRXSORCE ASC, DSTINDX ASC, RMDTYPAL ASC, DOCNUMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM10101SS_3] TO [DYNGRP]
GO
