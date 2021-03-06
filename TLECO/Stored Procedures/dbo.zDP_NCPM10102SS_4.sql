SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCPM10102SS_4] (@TRXSORCE char(13), @DSTINDX int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, ACTNUMST, ACTDESCR, DISTTYPE, BACHNUMB, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST, DistRef, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, RTCLCMTD, DECPLACS, EXPNDATE, ICCURRID, ICCURRIX, DENXRATE, MCTRXSTT, CorrespondingUnit, DEX_ROW_ID FROM .NCPM10102 WHERE TRXSORCE = @TRXSORCE AND DSTINDX = @DSTINDX ORDER BY TRXSORCE ASC, DSTINDX ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPM10102SS_4] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCPM10102SS_4] TO [public]
GO
