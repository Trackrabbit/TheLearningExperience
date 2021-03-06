SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpUPRCPRL_4] (@TRXENDDT_RS datetime, @COMPTRNM_RS int, @TRXENDDT_RE datetime, @COMPTRNM_RE int) AS /* 12.00.0270.000 */ set nocount on IF @TRXENDDT_RS IS NULL BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR ORDER BY TRXENDDT DESC, COMPTRNM DESC, DEX_ROW_ID DESC END ELSE IF @TRXENDDT_RS = @TRXENDDT_RE BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE TRXENDDT = @TRXENDDT_RS AND COMPTRNM BETWEEN @COMPTRNM_RS AND @COMPTRNM_RE ORDER BY TRXENDDT DESC, COMPTRNM DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE TRXENDDT BETWEEN @TRXENDDT_RS AND @TRXENDDT_RE AND COMPTRNM BETWEEN @COMPTRNM_RS AND @COMPTRNM_RE ORDER BY TRXENDDT DESC, COMPTRNM DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpUPRCPRL_4] TO [DYNGRP]
GO
