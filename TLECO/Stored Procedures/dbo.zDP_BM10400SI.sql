SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM10400SI] (@TRX_ID char(19), @Component_ID int, @SLTYPE smallint, @SLTSQNUM int, @SERLTNUM char(21), @SERLTQTY numeric(19,5), @ITEMNMBR char(31), @QTYTYPE smallint, @DATERECD datetime, @DTSEQNUM numeric(19,5), @OVRSERLT smallint, @PARSLSEQN int, @Parent_Component_ID int, @ITMTRKOP smallint, @TRXSORCE char(13), @UNITCOST numeric(19,5), @Status smallint, @LOCNCODE char(11), @BIN char(15), @MFGDATE datetime, @EXPNDATE datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .BM10400 (TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, OVRSERLT, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, Status, LOCNCODE, BIN, MFGDATE, EXPNDATE) VALUES ( @TRX_ID, @Component_ID, @SLTYPE, @SLTSQNUM, @SERLTNUM, @SERLTQTY, @ITEMNMBR, @QTYTYPE, @DATERECD, @DTSEQNUM, @OVRSERLT, @PARSLSEQN, @Parent_Component_ID, @ITMTRKOP, @TRXSORCE, @UNITCOST, @Status, @LOCNCODE, @BIN, @MFGDATE, @EXPNDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM10400SI] TO [DYNGRP]
GO
