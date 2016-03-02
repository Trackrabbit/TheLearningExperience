SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00250N_2] (@BS int, @POSTED tinyint, @ITEMNMBR char(31), @SERLTNUM char(21), @DEX_ROW_ID int, @POSTED_RS tinyint, @ITEMNMBR_RS char(31), @SERLTNUM_RS char(21), @POSTED_RE tinyint, @ITEMNMBR_RE char(31), @SERLTNUM_RE char(21)) AS  set nocount on IF @POSTED_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, EQUIPID, BIN, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC00250 WHERE ( POSTED = @POSTED AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND DEX_ROW_ID > @DEX_ROW_ID OR POSTED = @POSTED AND ITEMNMBR = @ITEMNMBR AND SERLTNUM > @SERLTNUM OR POSTED = @POSTED AND ITEMNMBR > @ITEMNMBR OR POSTED > @POSTED ) ORDER BY POSTED ASC, ITEMNMBR ASC, SERLTNUM ASC, DEX_ROW_ID ASC END ELSE IF @POSTED_RS = @POSTED_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, EQUIPID, BIN, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC00250 WHERE POSTED = @POSTED_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE AND ( POSTED = @POSTED AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND DEX_ROW_ID > @DEX_ROW_ID OR POSTED = @POSTED AND ITEMNMBR = @ITEMNMBR AND SERLTNUM > @SERLTNUM OR POSTED = @POSTED AND ITEMNMBR > @ITEMNMBR OR POSTED > @POSTED ) ORDER BY POSTED ASC, ITEMNMBR ASC, SERLTNUM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, EQUIPID, BIN, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC00250 WHERE POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE AND ( POSTED = @POSTED AND ITEMNMBR = @ITEMNMBR AND SERLTNUM = @SERLTNUM AND DEX_ROW_ID > @DEX_ROW_ID OR POSTED = @POSTED AND ITEMNMBR = @ITEMNMBR AND SERLTNUM > @SERLTNUM OR POSTED = @POSTED AND ITEMNMBR > @ITEMNMBR OR POSTED > @POSTED ) ORDER BY POSTED ASC, ITEMNMBR ASC, SERLTNUM ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00250N_2] TO [DYNGRP]
GO
