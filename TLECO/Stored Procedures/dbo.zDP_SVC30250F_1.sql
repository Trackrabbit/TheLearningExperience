SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30250F_1] (@SRVRECTYPE_RS smallint, @CALLNBR_RS char(11), @EQPLINE_RS int, @LINITMTYP_RS char(3), @CMPNTSEQ_RS int, @LNITMSEQ_RS int, @QTYTYPE_RS smallint, @SLTSQNUM_RS int, @SRVRECTYPE_RE smallint, @CALLNBR_RE char(11), @EQPLINE_RE int, @LINITMTYP_RE char(3), @CMPNTSEQ_RE int, @LNITMSEQ_RE int, @QTYTYPE_RE smallint, @SLTSQNUM_RE int) AS  set nocount on IF @SRVRECTYPE_RS IS NULL BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, EQUIPID, BIN, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC30250 ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LINITMTYP ASC, CMPNTSEQ ASC, LNITMSEQ ASC, QTYTYPE ASC, SLTSQNUM ASC END ELSE IF @SRVRECTYPE_RS = @SRVRECTYPE_RE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, EQUIPID, BIN, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC30250 WHERE SRVRECTYPE = @SRVRECTYPE_RS AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LINITMTYP ASC, CMPNTSEQ ASC, LNITMSEQ ASC, QTYTYPE ASC, SLTSQNUM ASC END ELSE BEGIN SELECT TOP 25  SRVRECTYPE, CALLNBR, EQPLINE, LINITMTYP, LNITMSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, EQUIPID, BIN, MFGDATE, EXPNDATE, CMPNTSEQ, DEX_ROW_ID FROM .SVC30250 WHERE SRVRECTYPE BETWEEN @SRVRECTYPE_RS AND @SRVRECTYPE_RE AND CALLNBR BETWEEN @CALLNBR_RS AND @CALLNBR_RE AND EQPLINE BETWEEN @EQPLINE_RS AND @EQPLINE_RE AND LINITMTYP BETWEEN @LINITMTYP_RS AND @LINITMTYP_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE ORDER BY SRVRECTYPE ASC, CALLNBR ASC, EQPLINE ASC, LINITMTYP ASC, CMPNTSEQ ASC, LNITMSEQ ASC, QTYTYPE ASC, SLTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30250F_1] TO [DYNGRP]
GO
