SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM10400SS_1] (@TRX_ID char(19), @Component_ID int, @SLTYPE smallint, @SLTSQNUM int) AS  set nocount on SELECT TOP 1  TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, OVRSERLT, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, Status, LOCNCODE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .BM10400 WHERE TRX_ID = @TRX_ID AND Component_ID = @Component_ID AND SLTYPE = @SLTYPE AND SLTSQNUM = @SLTSQNUM ORDER BY TRX_ID ASC, Component_ID ASC, SLTYPE ASC, SLTSQNUM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM10400SS_1] TO [DYNGRP]
GO
