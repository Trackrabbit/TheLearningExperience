SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM30400N_3] (@BS int, @ITMTRKOP smallint, @ITEMNMBR char(31), @SERLTNUM char(21), @TRX_ID char(19), @Component_ID int, @SLTYPE smallint, @SLTSQNUM int, @ITMTRKOP_RS smallint, @ITEMNMBR_RS char(31), @SERLTNUM_RS char(21), @TRX_ID_RS char(19), @Component_ID_RS int, @SLTYPE_RS smallint, @SLTSQNUM_RS int, @ITMTRKOP_RE smallint, @ITEMNMBR_RE char(31), @SERLTNUM_RE char(21), @TRX_ID_RE char(19), @Component_ID_RE int, @SLTYPE_RE smallint, @SLTSQNUM_RE int) AS  set nocount on IF @ITMTRKOP_RS IS NULL BEGIN SELECT TOP 25  TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .BM30400 WHERE ( ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID = @TRX_ID AND Component_ID = @Component_ID AND SLTYPE = @SLTYPE AND SLTSQNUM > @SLTSQNUM OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID = @TRX_ID AND Component_ID = @Component_ID AND SLTYPE > @SLTYPE OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID = @TRX_ID AND Component_ID > @Component_ID OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID > @TRX_ID OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM > @SERLTNUM OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR > @ITEMNMBR OR ITMTRKOP > @ITMTRKOP ) ORDER BY ITMTRKOP ASC, ITEMNMBR ASC, SERLTNUM ASC, TRX_ID ASC, Component_ID ASC, SLTYPE ASC, SLTSQNUM ASC END ELSE IF @ITMTRKOP_RS = @ITMTRKOP_RE BEGIN SELECT TOP 25  TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .BM30400 WHERE ITMTRKOP = @ITMTRKOP_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE AND TRX_ID BETWEEN @TRX_ID_RS AND @TRX_ID_RE AND Component_ID BETWEEN @Component_ID_RS AND @Component_ID_RE AND SLTYPE BETWEEN @SLTYPE_RS AND @SLTYPE_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE AND ( ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID = @TRX_ID AND Component_ID = @Component_ID AND SLTYPE = @SLTYPE AND SLTSQNUM > @SLTSQNUM OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID = @TRX_ID AND Component_ID = @Component_ID AND SLTYPE > @SLTYPE OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID = @TRX_ID AND Component_ID > @Component_ID OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID > @TRX_ID OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM > @SERLTNUM OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR > @ITEMNMBR OR ITMTRKOP > @ITMTRKOP ) ORDER BY ITMTRKOP ASC, ITEMNMBR ASC, SERLTNUM ASC, TRX_ID ASC, Component_ID ASC, SLTYPE ASC, SLTSQNUM ASC END ELSE BEGIN SELECT TOP 25  TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .BM30400 WHERE ITMTRKOP BETWEEN @ITMTRKOP_RS AND @ITMTRKOP_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE AND TRX_ID BETWEEN @TRX_ID_RS AND @TRX_ID_RE AND Component_ID BETWEEN @Component_ID_RS AND @Component_ID_RE AND SLTYPE BETWEEN @SLTYPE_RS AND @SLTYPE_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE AND ( ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID = @TRX_ID AND Component_ID = @Component_ID AND SLTYPE = @SLTYPE AND SLTSQNUM > @SLTSQNUM OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID = @TRX_ID AND Component_ID = @Component_ID AND SLTYPE > @SLTYPE OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID = @TRX_ID AND Component_ID > @Component_ID OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND TRX_ID > @TRX_ID OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR = @ITEMNMBR AND SERLTNUM > @SERLTNUM OR ITMTRKOP = @ITMTRKOP AND ITEMNMBR > @ITEMNMBR OR ITMTRKOP > @ITMTRKOP ) ORDER BY ITMTRKOP ASC, ITEMNMBR ASC, SERLTNUM ASC, TRX_ID ASC, Component_ID ASC, SLTYPE ASC, SLTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM30400N_3] TO [DYNGRP]
GO
