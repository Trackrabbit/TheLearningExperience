SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IVC10102SI] (@INVCNMBR char(21), @DOCTYPE smallint, @CMPNTSEQ int, @LNITMSEQ int, @QTYTYPE smallint, @SLTSQNUM int, @ITEMNMBR char(31), @SERLTNUM char(21), @SERLTQTY numeric(19,5), @DATERECD datetime, @DTSEQNUM numeric(19,5), @UNITCOST numeric(19,5), @TRXSORCE char(13), @POSTED tinyint, @OVRSERLT smallint, @MFGDATE datetime, @EXPNDATE datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IVC10102 (INVCNMBR, DOCTYPE, CMPNTSEQ, LNITMSEQ, QTYTYPE, SLTSQNUM, ITEMNMBR, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, POSTED, OVRSERLT, MFGDATE, EXPNDATE) VALUES ( @INVCNMBR, @DOCTYPE, @CMPNTSEQ, @LNITMSEQ, @QTYTYPE, @SLTSQNUM, @ITEMNMBR, @SERLTNUM, @SERLTQTY, @DATERECD, @DTSEQNUM, @UNITCOST, @TRXSORCE, @POSTED, @OVRSERLT, @MFGDATE, @EXPNDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IVC10102SI] TO [DYNGRP]
GO