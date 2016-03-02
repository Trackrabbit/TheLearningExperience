SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM10400L_4] (@SERLTNUM_RS char(21), @ITEMNMBR_RS char(31), @SERLTNUM_RE char(21), @ITEMNMBR_RE char(31)) AS  set nocount on IF @SERLTNUM_RS IS NULL BEGIN SELECT TOP 25  TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, OVRSERLT, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, Status, LOCNCODE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .BM10400 ORDER BY SERLTNUM DESC, ITEMNMBR DESC, DEX_ROW_ID DESC END ELSE IF @SERLTNUM_RS = @SERLTNUM_RE BEGIN SELECT TOP 25  TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, OVRSERLT, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, Status, LOCNCODE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .BM10400 WHERE SERLTNUM = @SERLTNUM_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY SERLTNUM DESC, ITEMNMBR DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  TRX_ID, Component_ID, SLTYPE, SLTSQNUM, SERLTNUM, SERLTQTY, ITEMNMBR, QTYTYPE, DATERECD, DTSEQNUM, OVRSERLT, PARSLSEQN, Parent_Component_ID, ITMTRKOP, TRXSORCE, UNITCOST, Status, LOCNCODE, BIN, MFGDATE, EXPNDATE, DEX_ROW_ID FROM .BM10400 WHERE SERLTNUM BETWEEN @SERLTNUM_RS AND @SERLTNUM_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY SERLTNUM DESC, ITEMNMBR DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM10400L_4] TO [DYNGRP]
GO
