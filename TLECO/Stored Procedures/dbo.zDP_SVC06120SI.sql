SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06120SI] (@WORECTYPE smallint, @WORKORDNUM char(11), @LINITMTYP char(3), @LNITMSEQ int, @QTYTYPE smallint, @SERLTQTY numeric(19,5), @SERLTNUM char(21), @SLTSQNUM int, @DATERECD datetime, @DTSEQNUM numeric(19,5), @UNITCOST numeric(19,5), @ITEMNMBR char(31), @TRXSORCE char(13), @POSTED tinyint, @OVRSERLT smallint, @EQUIPID int, @BIN char(15), @MFGDATE datetime, @EXPNDATE datetime, @CMPNTSEQ int, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC06120 (WORECTYPE, WORKORDNUM, LINITMTYP, LNITMSEQ, QTYTYPE, SERLTQTY, SERLTNUM, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, EQUIPID, BIN, MFGDATE, EXPNDATE, CMPNTSEQ) VALUES ( @WORECTYPE, @WORKORDNUM, @LINITMTYP, @LNITMSEQ, @QTYTYPE, @SERLTQTY, @SERLTNUM, @SLTSQNUM, @DATERECD, @DTSEQNUM, @UNITCOST, @ITEMNMBR, @TRXSORCE, @POSTED, @OVRSERLT, @EQUIPID, @BIN, @MFGDATE, @EXPNDATE, @CMPNTSEQ) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06120SI] TO [DYNGRP]
GO
