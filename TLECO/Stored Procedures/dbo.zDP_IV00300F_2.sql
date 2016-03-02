SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00300F_2] (@ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @LTNUMSLD_RS tinyint, @QTYTYPE_RS smallint, @DATERECD_RS datetime, @DTSEQNUM_RS numeric(19,5), @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11), @LTNUMSLD_RE tinyint, @QTYTYPE_RE smallint, @DATERECD_RE datetime, @DTSEQNUM_RE numeric(19,5)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, LOTNUMBR, QTYRECVD, QTYSOLD, ATYALLOC, UNITCOST, RCTSEQNM, VNDRNMBR, LTNUMSLD, QTYTYPE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV00300 ORDER BY ITEMNMBR ASC, LOCNCODE ASC, LTNUMSLD ASC, QTYTYPE ASC, DATERECD ASC, DTSEQNUM ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, LOTNUMBR, QTYRECVD, QTYSOLD, ATYALLOC, UNITCOST, RCTSEQNM, VNDRNMBR, LTNUMSLD, QTYTYPE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV00300 WHERE ITEMNMBR = @ITEMNMBR_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LTNUMSLD BETWEEN @LTNUMSLD_RS AND @LTNUMSLD_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND DATERECD BETWEEN @DATERECD_RS AND @DATERECD_RE AND DTSEQNUM BETWEEN @DTSEQNUM_RS AND @DTSEQNUM_RE ORDER BY ITEMNMBR ASC, LOCNCODE ASC, LTNUMSLD ASC, QTYTYPE ASC, DATERECD ASC, DTSEQNUM ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, LOTNUMBR, QTYRECVD, QTYSOLD, ATYALLOC, UNITCOST, RCTSEQNM, VNDRNMBR, LTNUMSLD, QTYTYPE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .IV00300 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LTNUMSLD BETWEEN @LTNUMSLD_RS AND @LTNUMSLD_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND DATERECD BETWEEN @DATERECD_RS AND @DATERECD_RE AND DTSEQNUM BETWEEN @DTSEQNUM_RS AND @DTSEQNUM_RE ORDER BY ITEMNMBR ASC, LOCNCODE ASC, LTNUMSLD ASC, QTYTYPE ASC, DATERECD ASC, DTSEQNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00300F_2] TO [DYNGRP]
GO
