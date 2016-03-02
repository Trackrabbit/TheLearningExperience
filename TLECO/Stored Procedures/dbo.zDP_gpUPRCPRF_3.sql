SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpUPRCPRF_3] (@EMPLOYID_RS char(15), @TRXENDDT_RS datetime, @COMPTRNM_RS int, @EMPLOYID_RE char(15), @TRXENDDT_RE datetime, @COMPTRNM_RE int) AS /* 12.00.0270.000 */ set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR ORDER BY EMPLOYID ASC, TRXENDDT ASC, COMPTRNM ASC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE EMPLOYID = @EMPLOYID_RS AND TRXENDDT BETWEEN @TRXENDDT_RS AND @TRXENDDT_RE AND COMPTRNM BETWEEN @COMPTRNM_RS AND @COMPTRNM_RE ORDER BY EMPLOYID ASC, TRXENDDT ASC, COMPTRNM ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND TRXENDDT BETWEEN @TRXENDDT_RS AND @TRXENDDT_RE AND COMPTRNM BETWEEN @COMPTRNM_RS AND @COMPTRNM_RE ORDER BY EMPLOYID ASC, TRXENDDT ASC, COMPTRNM ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpUPRCPRF_3] TO [DYNGRP]
GO
