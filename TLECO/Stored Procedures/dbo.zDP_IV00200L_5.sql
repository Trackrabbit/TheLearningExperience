SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00200L_5] (@ITEMNMBR_RS char(31), @LOCNCODE_RS char(11), @QTYTYPE_RS smallint, @DATERECD_RS datetime, @RCTSEQNM_RS int, @DTSEQNUM_RS numeric(19,5), @ITEMNMBR_RE char(31), @LOCNCODE_RE char(11), @QTYTYPE_RE smallint, @DATERECD_RE datetime, @RCTSEQNM_RE int, @DTSEQNUM_RE numeric(19,5)) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, SERLNMBR, FGDITMNM, FGSERNBR, UNITCOST, RCTSEQNM, VNDRNMBR, CMPFINGD, SERLNSLD, QTYTYPE, BIN, DEX_ROW_ID FROM .IV00200 ORDER BY ITEMNMBR DESC, LOCNCODE DESC, QTYTYPE DESC, DATERECD DESC, RCTSEQNM DESC, DTSEQNUM DESC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, SERLNMBR, FGDITMNM, FGSERNBR, UNITCOST, RCTSEQNM, VNDRNMBR, CMPFINGD, SERLNSLD, QTYTYPE, BIN, DEX_ROW_ID FROM .IV00200 WHERE ITEMNMBR = @ITEMNMBR_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND DATERECD BETWEEN @DATERECD_RS AND @DATERECD_RE AND RCTSEQNM BETWEEN @RCTSEQNM_RS AND @RCTSEQNM_RE AND DTSEQNUM BETWEEN @DTSEQNUM_RS AND @DTSEQNUM_RE ORDER BY ITEMNMBR DESC, LOCNCODE DESC, QTYTYPE DESC, DATERECD DESC, RCTSEQNM DESC, DTSEQNUM DESC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, SERLNMBR, FGDITMNM, FGSERNBR, UNITCOST, RCTSEQNM, VNDRNMBR, CMPFINGD, SERLNSLD, QTYTYPE, BIN, DEX_ROW_ID FROM .IV00200 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND QTYTYPE BETWEEN @QTYTYPE_RS AND @QTYTYPE_RE AND DATERECD BETWEEN @DATERECD_RS AND @DATERECD_RE AND RCTSEQNM BETWEEN @RCTSEQNM_RS AND @RCTSEQNM_RE AND DTSEQNUM BETWEEN @DTSEQNUM_RS AND @DTSEQNUM_RE ORDER BY ITEMNMBR DESC, LOCNCODE DESC, QTYTYPE DESC, DATERECD DESC, RCTSEQNM DESC, DTSEQNUM DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00200L_5] TO [DYNGRP]
GO