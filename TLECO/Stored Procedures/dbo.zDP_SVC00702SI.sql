SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00702SI] (@ORDDOCID char(15), @TRANSLINESEQ int, @SRVRECTYPE smallint, @CALLNBR char(11), @EQPLINE int, @LINITMTYP char(3), @LNITMSEQ int, @QTYTYPE smallint, @SERLTNUM char(21), @SERLTQTY numeric(19,5), @SLTSQNUM int, @DATERECD datetime, @DTSEQNUM numeric(19,5), @UNITCOST numeric(19,5), @ITEMNMBR char(31), @TRXSORCE char(13), @POSTED tinyint, @OVRSERLT smallint, @STATUS smallint, @FROMBIN char(15), @TOBIN char(15), @MFGDATE datetime, @EXPNDATE datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00702 (ORDDOCID, TRANSLINESEQ, SRVRECTYPE, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, STATUS, FROMBIN, TOBIN, MFGDATE, EXPNDATE) VALUES ( @ORDDOCID, @TRANSLINESEQ, @SRVRECTYPE, @CALLNBR, @EQPLINE, @LINITMTYP, @LNITMSEQ, @QTYTYPE, @SERLTNUM, @SERLTQTY, @SLTSQNUM, @DATERECD, @DTSEQNUM, @UNITCOST, @ITEMNMBR, @TRXSORCE, @POSTED, @OVRSERLT, @STATUS, @FROMBIN, @TOBIN, @MFGDATE, @EXPNDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00702SI] TO [DYNGRP]
GO
