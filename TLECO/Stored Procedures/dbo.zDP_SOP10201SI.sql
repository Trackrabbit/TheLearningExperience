SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10201SI] (@SOPTYPE smallint, @SOPNUMBE char(21), @LNITMSEQ int, @CMPNTSEQ int, @QTYTYPE smallint, @SERLTNUM char(21), @SERLTQTY numeric(19,5), @SLTSQNUM int, @DATERECD datetime, @DTSEQNUM numeric(19,5), @UNITCOST numeric(19,5), @ITEMNMBR char(31), @TRXSORCE char(13), @POSTED tinyint, @OVRSERLT smallint, @BIN char(15), @MFGDATE datetime, @EXPNDATE datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SOP10201 (SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, BIN, MFGDATE, EXPNDATE) VALUES ( @SOPTYPE, @SOPNUMBE, @LNITMSEQ, @CMPNTSEQ, @QTYTYPE, @SERLTNUM, @SERLTQTY, @SLTSQNUM, @DATERECD, @DTSEQNUM, @UNITCOST, @ITEMNMBR, @TRXSORCE, @POSTED, @OVRSERLT, @BIN, @MFGDATE, @EXPNDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10201SI] TO [DYNGRP]
GO
