SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10201N_1] (@BS int, @SOPTYPE smallint, @SOPNUMBE char(21), @LNITMSEQ int, @CMPNTSEQ int, @QTYTYPE smallint, @SLTSQNUM int, @SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @LNITMSEQ_RS int, @CMPNTSEQ_RS int, @QTYTYPE_RS smallint, @SLTSQNUM_RS int, @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21), @LNITMSEQ_RE int, @CMPNTSEQ_RE int, @QTYTYPE_RE smallint, @SLTSQNUM_RE int) AS  set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SOP10201 WHERE ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND QTYTYPE = @QTYTYPE AND SLTSQNUM > @SLTSQNUM OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND QTYTYPE > @QTYTYPE OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ > @LNITMSEQ OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, CMPNTSEQ ASC, QTYTYPE ASC, SLTSQNUM ASC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SOP10201 WHERE SOPTYPE = @SOPTYPE_RS AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND QTYTYPE = @QTYTYPE AND SLTSQNUM > @SLTSQNUM OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND QTYTYPE > @QTYTYPE OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ > @LNITMSEQ OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, CMPNTSEQ ASC, QTYTYPE ASC, SLTSQNUM ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, QTYTYPE, SERLTNUM, SERLTQTY, SLTSQNUM, DATERECD, DTSEQNUM, UNITCOST, ITEMNMBR, TRXSORCE, POSTED, OVRSERLT, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SOP10201 WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND CMPNTSEQ BETWEEN @CMPNTSEQ_RS AND @CMPNTSEQ_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND SLTSQNUM BETWEEN @SLTSQNUM_RS AND @SLTSQNUM_RE AND ( SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND QTYTYPE = @QTYTYPE AND SLTSQNUM > @SLTSQNUM OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ = @CMPNTSEQ AND QTYTYPE > @QTYTYPE OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND CMPNTSEQ > @CMPNTSEQ OR SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ > @LNITMSEQ OR SOPTYPE = @SOPTYPE AND SOPNUMBE > @SOPNUMBE OR SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC, SOPNUMBE ASC, LNITMSEQ ASC, CMPNTSEQ ASC, QTYTYPE ASC, SLTSQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10201N_1] TO [DYNGRP]
GO
