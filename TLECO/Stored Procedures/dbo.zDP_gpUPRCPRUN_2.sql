SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpUPRCPRUN_2] (@BS int, @JOBNUMBR char(17), @TRXENDDT datetime, @COMPTRNM int, @JOBNUMBR_RS char(17), @TRXENDDT_RS datetime, @COMPTRNM_RS int, @JOBNUMBR_RE char(17), @TRXENDDT_RE datetime, @COMPTRNM_RE int) AS /* 12.00.0270.000 */ set nocount on IF @JOBNUMBR_RS IS NULL BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE ( JOBNUMBR = @JOBNUMBR AND TRXENDDT = @TRXENDDT AND COMPTRNM > @COMPTRNM OR JOBNUMBR = @JOBNUMBR AND TRXENDDT > @TRXENDDT OR JOBNUMBR > @JOBNUMBR ) ORDER BY JOBNUMBR ASC, TRXENDDT ASC, COMPTRNM ASC, DEX_ROW_ID ASC END ELSE IF @JOBNUMBR_RS = @JOBNUMBR_RE BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE JOBNUMBR = @JOBNUMBR_RS AND TRXENDDT BETWEEN @TRXENDDT_RS AND @TRXENDDT_RE AND COMPTRNM BETWEEN @COMPTRNM_RS AND @COMPTRNM_RE AND ( JOBNUMBR = @JOBNUMBR AND TRXENDDT = @TRXENDDT AND COMPTRNM > @COMPTRNM OR JOBNUMBR = @JOBNUMBR AND TRXENDDT > @TRXENDDT OR JOBNUMBR > @JOBNUMBR ) ORDER BY JOBNUMBR ASC, TRXENDDT ASC, COMPTRNM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE JOBNUMBR BETWEEN @JOBNUMBR_RS AND @JOBNUMBR_RE AND TRXENDDT BETWEEN @TRXENDDT_RS AND @TRXENDDT_RE AND COMPTRNM BETWEEN @COMPTRNM_RS AND @COMPTRNM_RE AND ( JOBNUMBR = @JOBNUMBR AND TRXENDDT = @TRXENDDT AND COMPTRNM > @COMPTRNM OR JOBNUMBR = @JOBNUMBR AND TRXENDDT > @TRXENDDT OR JOBNUMBR > @JOBNUMBR ) ORDER BY JOBNUMBR ASC, TRXENDDT ASC, COMPTRNM ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpUPRCPRUN_2] TO [DYNGRP]
GO