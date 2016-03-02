SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[aagGetDistID_UPR_ManualChk]  @MLCHKTYP smallint,   @PYADNMBR int,   @MLTRXNBR int,   @SEQNUMBR int,  @oDistID int output AS Begin  DECLARE @DistID int   SELECT MLCHKTYP,   PYADNMBR,   MLTRXNBR,   SEQNUMBR,  IDENTITY(int, 1,1) AS DisplayDistID  INTO #newtable1   FROM UPR10310  WHERE MLCHKTYP = @MLCHKTYP and  PYADNMBR = @PYADNMBR   ORDER BY SEQNUMBR   SELECT @DistID = DisplayDistID FROM #newtable1   WHERE MLCHKTYP = @MLCHKTYP and  PYADNMBR = @PYADNMBR and  MLTRXNBR = @MLTRXNBR and  SEQNUMBR = @SEQNUMBR   SELECT @oDistID = @DistID  End    
GO
GRANT EXECUTE ON  [dbo].[aagGetDistID_UPR_ManualChk] TO [DYNGRP]
GO