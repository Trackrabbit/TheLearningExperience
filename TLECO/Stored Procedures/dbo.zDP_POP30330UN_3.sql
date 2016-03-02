SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP30330UN_3] (@BS int, @SERLTNUM char(21), @ITEMNMBR char(31), @SERLTNUM_RS char(21), @ITEMNMBR_RS char(31), @SERLTNUM_RE char(21), @ITEMNMBR_RE char(31)) AS  set nocount on IF @SERLTNUM_RS IS NULL BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, SLTSQNUM, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, ITEMNMBR, QTYTYPE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .POP30330 WHERE ( SERLTNUM = @SERLTNUM AND ITEMNMBR > @ITEMNMBR OR SERLTNUM > @SERLTNUM ) ORDER BY SERLTNUM ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE IF @SERLTNUM_RS = @SERLTNUM_RE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, SLTSQNUM, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, ITEMNMBR, QTYTYPE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .POP30330 WHERE SERLTNUM = @SERLTNUM_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( SERLTNUM = @SERLTNUM AND ITEMNMBR > @ITEMNMBR OR SERLTNUM > @SERLTNUM ) ORDER BY SERLTNUM ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  POPRCTNM, RCPTLNNM, SLTSQNUM, SERLTNUM, SERLTQTY, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, ITEMNMBR, QTYTYPE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .POP30330 WHERE SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND ( SERLTNUM = @SERLTNUM AND ITEMNMBR > @ITEMNMBR OR SERLTNUM > @SERLTNUM ) ORDER BY SERLTNUM ASC, ITEMNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP30330UN_3] TO [DYNGRP]
GO
