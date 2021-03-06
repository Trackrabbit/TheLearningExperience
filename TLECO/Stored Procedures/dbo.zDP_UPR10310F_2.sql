SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR10310F_2] (@MLCHKTYP_RS smallint, @PYADNMBR_RS int, @ACTINDX_RS int, @SEQNUMBR_RS int, @MLCHKTYP_RE smallint, @PYADNMBR_RE int, @ACTINDX_RE int, @SEQNUMBR_RE int) AS  set nocount on IF @MLCHKTYP_RS IS NULL BEGIN SELECT TOP 25  MLCHKTYP, PYADNMBR, MLTRXNBR, SEQNUMBR, ACTINDX, UPRACTYP, DEBITAMT, CRDTAMNT, DEPRTMNT, JOBTITLE, UPRTRXCD, DEX_ROW_ID FROM .UPR10310 ORDER BY MLCHKTYP ASC, PYADNMBR ASC, ACTINDX ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @MLCHKTYP_RS = @MLCHKTYP_RE BEGIN SELECT TOP 25  MLCHKTYP, PYADNMBR, MLTRXNBR, SEQNUMBR, ACTINDX, UPRACTYP, DEBITAMT, CRDTAMNT, DEPRTMNT, JOBTITLE, UPRTRXCD, DEX_ROW_ID FROM .UPR10310 WHERE MLCHKTYP = @MLCHKTYP_RS AND PYADNMBR BETWEEN @PYADNMBR_RS AND @PYADNMBR_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY MLCHKTYP ASC, PYADNMBR ASC, ACTINDX ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MLCHKTYP, PYADNMBR, MLTRXNBR, SEQNUMBR, ACTINDX, UPRACTYP, DEBITAMT, CRDTAMNT, DEPRTMNT, JOBTITLE, UPRTRXCD, DEX_ROW_ID FROM .UPR10310 WHERE MLCHKTYP BETWEEN @MLCHKTYP_RS AND @MLCHKTYP_RE AND PYADNMBR BETWEEN @PYADNMBR_RS AND @PYADNMBR_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE ORDER BY MLCHKTYP ASC, PYADNMBR ASC, ACTINDX ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10310F_2] TO [DYNGRP]
GO
