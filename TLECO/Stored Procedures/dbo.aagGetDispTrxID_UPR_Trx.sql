SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  PROCEDURE [dbo].[aagGetDispTrxID_UPR_Trx] @iBACHNUMB char(15), @iSERIES smallint, @iDOCTYPE smallint, @iTrxNumber   int = 0,  @oHdrID int = 0 OUTPUT,  @oDispTrxID  int = 0 OUTPUT  AS BEGIN  DECLARE @DistID int,  @Min int,  @int_lHdrID int    SELECT @DistID = 0,   @Min = 0,  @int_lHdrID = 0   SELECT aaSubLedgerHdrID,   aaSubLedgerDistID,   COMPTRNM,  IDENTITY(int, 1,1) AS DisplayDistID  INTO #newtable1   FROM (  SELECT DIST.*, DOCNUMBR   FROM AAG20001 DIST INNER JOIN AAG20000 HDR  ON HDR.aaSubLedgerHdrID = DIST.aaSubLedgerHdrID  WHERE SERIES = @iSERIES AND   DOCTYPE = @iDOCTYPE) AA   RIGHT OUTER JOIN UPR10302 UPR ON AA.DOCNUMBR = UPR.COMPTRNM  WHERE COMPTRTP = 1   and  BACHNUMB = @iBACHNUMB  ORDER BY COMPTRNM   SELECT @DistID = DisplayDistID, @int_lHdrID = aaSubLedgerHdrID FROM #newtable1 WHERE COMPTRNM = abs(@iTrxNumber)    SELECT @oDispTrxID = @DistID,  @oHdrID = @int_lHdrID END    
GO
GRANT EXECUTE ON  [dbo].[aagGetDispTrxID_UPR_Trx] TO [DYNGRP]
GO
