SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpUPRCPRF_5] (@EMPLOYID_RS char(15), @PYADNMBR_RS int, @EMPLOYID_RE char(15), @PYADNMBR_RE int) AS /* 12.00.0270.000 */ set nocount on IF @EMPLOYID_RS IS NULL BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR ORDER BY EMPLOYID ASC, PYADNMBR ASC, DEX_ROW_ID ASC END ELSE IF @EMPLOYID_RS = @EMPLOYID_RE BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE EMPLOYID = @EMPLOYID_RS AND PYADNMBR BETWEEN @PYADNMBR_RS AND @PYADNMBR_RE ORDER BY EMPLOYID ASC, PYADNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  COMPTRNM, JOBNUMBR, TRXENDDT, EMPLOYID, HOURSWKD, HRLYPYRT, PYADNMBR, AUCTRLCD, TOTALPAY, DEPRTMNT, JOBTITLE, PAYRCORD, BRKFLD1, DEX_ROW_ID FROM .gpUPRCPR WHERE EMPLOYID BETWEEN @EMPLOYID_RS AND @EMPLOYID_RE AND PYADNMBR BETWEEN @PYADNMBR_RS AND @PYADNMBR_RE ORDER BY EMPLOYID ASC, PYADNMBR ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpUPRCPRF_5] TO [DYNGRP]
GO