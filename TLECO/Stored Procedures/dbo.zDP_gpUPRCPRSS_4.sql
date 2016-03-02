SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpUPRCPRSS_4] (@TRXENDDT datetime, @COMPTRNM int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE TRXENDDT = @TRXENDDT AND COMPTRNM = @COMPTRNM ORDER BY TRXENDDT ASC, COMPTRNM ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpUPRCPRSS_4] TO [DYNGRP]
GO