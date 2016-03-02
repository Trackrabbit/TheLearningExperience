SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpUPRCPRF_1] (@AUCTRLCD_RS char(13), @COMPTRNM_RS int, @AUCTRLCD_RE char(13), @COMPTRNM_RE int) AS /* 12.00.0270.000 */ set nocount on IF @AUCTRLCD_RS IS NULL BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR ORDER BY AUCTRLCD ASC, COMPTRNM ASC END ELSE IF @AUCTRLCD_RS = @AUCTRLCD_RE BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE AUCTRLCD = @AUCTRLCD_RS AND COMPTRNM BETWEEN @COMPTRNM_RS AND @COMPTRNM_RE ORDER BY AUCTRLCD ASC, COMPTRNM ASC END ELSE BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE AUCTRLCD BETWEEN @AUCTRLCD_RS AND @AUCTRLCD_RE AND COMPTRNM BETWEEN @COMPTRNM_RS AND @COMPTRNM_RE ORDER BY AUCTRLCD ASC, COMPTRNM ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpUPRCPRF_1] TO [DYNGRP]
GO
