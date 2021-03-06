SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM10400N_3] (@BS int, @TRX_ID char(19), @Parent_Component_ID int, @PARSLSEQN int, @Component_ID int, @SLTYPE smallint, @SLTSQNUM int, @TRX_ID_RS char(19), @Parent_Component_ID_RS int, @PARSLSEQN_RS int, @Component_ID_RS int, @SLTYPE_RS smallint, @SLTSQNUM_RS int, @TRX_ID_RE char(19), @Parent_Component_ID_RE int, @PARSLSEQN_RE int, @Component_ID_RE int, @SLTYPE_RE smallint, @SLTSQNUM_RE int) AS  set nocount on IF @TRX_ID_RS IS NULL BEGIN SELECT TOP 25  TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, OVRSERLT, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, Status, LOCNCODE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .BM10400 WHERE ( TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN = @PARSLSEQN AND Component_ID = @Component_ID AND SLTYPE = @SLTYPE AND SLTSQNUM > @SLTSQNUM OR TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN = @PARSLSEQN AND Component_ID = @Component_ID AND SLTYPE > @SLTYPE OR TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN = @PARSLSEQN AND Component_ID > @Component_ID OR TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN > @PARSLSEQN OR TRX_ID = @TRX_ID AND Parent_Component_ID > @Parent_Component_ID OR TRX_ID > @TRX_ID ) ORDER BY TRX_ID ASC, Parent_Component_ID ASC, PARSLSEQN ASC, Component_ID ASC, SLTYPE ASC, SLTSQNUM ASC END ELSE IF @TRX_ID_RS = @TRX_ID_RE BEGIN SELECT TOP 25  TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, OVRSERLT, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, Status, LOCNCODE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .BM10400 WHERE TRX_ID = @TRX_ID_RS AND Parent_Component_ID BETWEEN @Parent_Component_ID_RS AND @Parent_Component_ID_RE AND PARSLSEQN BETWEEN @PARSLSEQN_RS AND @PARSLSEQN_RE AND Component_ID BETWEEN @Component_ID_RS AND @Component_ID_RE AND SLTYPE BETWEEN @SLTYPE_RS AND @SLTYPE_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE AND ( TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN = @PARSLSEQN AND Component_ID = @Component_ID AND SLTYPE = @SLTYPE AND SLTSQNUM > @SLTSQNUM OR TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN = @PARSLSEQN AND Component_ID = @Component_ID AND SLTYPE > @SLTYPE OR TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN = @PARSLSEQN AND Component_ID > @Component_ID OR TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN > @PARSLSEQN OR TRX_ID = @TRX_ID AND Parent_Component_ID > @Parent_Component_ID OR TRX_ID > @TRX_ID ) ORDER BY TRX_ID ASC, Parent_Component_ID ASC, PARSLSEQN ASC, Component_ID ASC, SLTYPE ASC, SLTSQNUM ASC END ELSE BEGIN SELECT TOP 25  TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, OVRSERLT, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, Status, LOCNCODE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .BM10400 WHERE TRX_ID BETWEEN @TRX_ID_RS AND @TRX_ID_RE AND Parent_Component_ID BETWEEN @Parent_Component_ID_RS AND @Parent_Component_ID_RE AND PARSLSEQN BETWEEN @PARSLSEQN_RS AND @PARSLSEQN_RE AND Component_ID BETWEEN @Component_ID_RS AND @Component_ID_RE AND SLTYPE BETWEEN @SLTYPE_RS AND @SLTYPE_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE AND ( TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN = @PARSLSEQN AND Component_ID = @Component_ID AND SLTYPE = @SLTYPE AND SLTSQNUM > @SLTSQNUM OR TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN = @PARSLSEQN AND Component_ID = @Component_ID AND SLTYPE > @SLTYPE OR TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN = @PARSLSEQN AND Component_ID > @Component_ID OR TRX_ID = @TRX_ID AND Parent_Component_ID = @Parent_Component_ID AND PARSLSEQN > @PARSLSEQN OR TRX_ID = @TRX_ID AND Parent_Component_ID > @Parent_Component_ID OR TRX_ID > @TRX_ID ) ORDER BY TRX_ID ASC, Parent_Component_ID ASC, PARSLSEQN ASC, Component_ID ASC, SLTYPE ASC, SLTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM10400N_3] TO [DYNGRP]
GO
