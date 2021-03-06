SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00200SS_4] (@FGDITMNM char(31), @FGSERNBR char(21)) AS  set nocount on SELECT TOP 1  ITEMNMBR, LOCNCODE, DATERECD, DTSEQNUM, SERLNMBR, FGDITMNM, FGSERNBR, UNITCOST, RCTSEQNM, VNDRNMBR, CMPFINGD, SERLNSLD, QTYTYPE, BIN, DEX_ROW_ID FROM .IV00200 WHERE FGDITMNM = @FGDITMNM AND FGSERNBR = @FGSERNBR ORDER BY FGDITMNM ASC, FGSERNBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00200SS_4] TO [DYNGRP]
GO
