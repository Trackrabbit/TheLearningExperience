SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05250L_2] (@POSTED_RS tinyint, @ITEMNMBR_RS char(31), @SERLTNUM_RS char(21), @POSTED_RE tinyint, @ITEMNMBR_RE char(31), @SERLTNUM_RE char(21)) AS  set nocount on IF @POSTED_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, QTYTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, POSTED, OVRSERLT, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SVC05250 ORDER BY POSTED DESC, ITEMNMBR DESC, SERLTNUM DESC, DEX_ROW_ID DESC END ELSE IF @POSTED_RS = @POSTED_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, QTYTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, POSTED, OVRSERLT, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SVC05250 WHERE POSTED = @POSTED_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE ORDER BY POSTED DESC, ITEMNMBR DESC, SERLTNUM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, LNITMSEQ, CMPNTSEQ, QTYTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, DATERECD, DTSEQNUM, UNITCOST, TRXSORCE, POSTED, OVRSERLT, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .SVC05250 WHERE POSTED BETWEEN @POSTED_RS AND @POSTED_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE ORDER BY POSTED DESC, ITEMNMBR DESC, SERLTNUM DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05250L_2] TO [DYNGRP]
GO
