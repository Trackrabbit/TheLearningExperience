SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00300SI] (@ITEMNMBR char(31), @LOCNCODE char(11), @DATERECD datetime, @DTSEQNUM numeric(19,5), @LOTNUMBR char(21), @QTYRECVD numeric(19,5), @QTYSOLD numeric(19,5), @ATYALLOC numeric(19,5), @UNITCOST numeric(19,5), @RCTSEQNM int, @VNDRNMBR char(25), @LTNUMSLD tinyint, @QTYTYPE smallint, @BIN char(15), @MFGDATE datetime, @EXPNDATE datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV00300 (ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, LOTNUMBR, QTYRECVD, QTYSOLD, ATYALLOC, UNITCOST, RCTSEQNM, VNDRNMBR, LTNUMSLD, QTYTYPE, BIN, MFGDATE, EXPNDATE) VALUES ( @ITEMNMBR, @LOCNCODE, @DATERECD, @DTSEQNUM, @LOTNUMBR, @QTYRECVD, @QTYSOLD, @ATYALLOC, @UNITCOST, @RCTSEQNM, @VNDRNMBR, @LTNUMSLD, @QTYTYPE, @BIN, @MFGDATE, @EXPNDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00300SI] TO [DYNGRP]
GO