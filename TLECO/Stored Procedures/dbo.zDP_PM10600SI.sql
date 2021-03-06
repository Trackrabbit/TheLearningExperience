SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM10600SI] (@DOCTYPE smallint, @VCHRNMBR char(21), @DSTSQNUM int, @CNTRLTYP smallint, @CRDTAMNT numeric(19,5), @DEBITAMT numeric(19,5), @DSTINDX int, @DISTTYPE smallint, @CHANGED tinyint, @USERID char(15), @PSTGSTUS smallint, @VENDORID char(15), @TRXSORCE char(13), @PSTGDATE datetime, @INTERID char(5), @CURNCYID char(15), @CURRNIDX smallint, @ORCRDAMT numeric(19,5), @ORDBTAMT numeric(19,5), @APTVCHNM char(21), @APTODCTY smallint, @SPCLDIST smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .PM10600 (DOCTYPE, VCHRNMBR, DSTSQNUM, CNTRLTYP, CRDTAMNT, DEBITAMT, DSTINDX, DISTTYPE, CHANGED, USERID, PSTGSTUS, VENDORID, TRXSORCE, PSTGDATE, INTERID, CURNCYID, CURRNIDX, ORCRDAMT, ORDBTAMT, APTVCHNM, APTODCTY, SPCLDIST) VALUES ( @DOCTYPE, @VCHRNMBR, @DSTSQNUM, @CNTRLTYP, @CRDTAMNT, @DEBITAMT, @DSTINDX, @DISTTYPE, @CHANGED, @USERID, @PSTGSTUS, @VENDORID, @TRXSORCE, @PSTGDATE, @INTERID, @CURNCYID, @CURRNIDX, @ORCRDAMT, @ORDBTAMT, @APTVCHNM, @APTODCTY, @SPCLDIST) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM10600SI] TO [DYNGRP]
GO
