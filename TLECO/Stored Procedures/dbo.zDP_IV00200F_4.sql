SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00200F_4] (@FGDITMNM_RS char(31), @FGSERNBR_RS char(21), @FGDITMNM_RE char(31), @FGSERNBR_RE char(21)) AS  set nocount on IF @FGDITMNM_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, SERLNMBR, FGDITMNM, FGSERNBR, UNITCOST, RCTSEQNM, VNDRNMBR, CMPFINGD, SERLNSLD, QTYTYPE, BIN, DEX_ROW_ID FROM .IV00200 ORDER BY FGDITMNM ASC, FGSERNBR ASC, DEX_ROW_ID ASC END ELSE IF @FGDITMNM_RS = @FGDITMNM_RE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, SERLNMBR, FGDITMNM, FGSERNBR, UNITCOST, RCTSEQNM, VNDRNMBR, CMPFINGD, SERLNSLD, QTYTYPE, BIN, DEX_ROW_ID FROM .IV00200 WHERE FGDITMNM = @FGDITMNM_RS AND FGSERNBR BETWEEN @FGSERNBR_RS AND @FGSERNBR_RE ORDER BY FGDITMNM ASC, FGSERNBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, SERLNMBR, FGDITMNM, FGSERNBR, UNITCOST, RCTSEQNM, VNDRNMBR, CMPFINGD, SERLNSLD, QTYTYPE, BIN, DEX_ROW_ID FROM .IV00200 WHERE FGDITMNM BETWEEN @FGDITMNM_RS AND @FGDITMNM_RE AND FGSERNBR BETWEEN @FGSERNBR_RS AND @FGSERNBR_RE ORDER BY FGDITMNM ASC, FGSERNBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00200F_4] TO [DYNGRP]
GO
