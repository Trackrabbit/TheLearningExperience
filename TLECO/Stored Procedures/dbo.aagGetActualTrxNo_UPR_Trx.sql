SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE  PROCEDURE [dbo].[aagGetActualTrxNo_UPR_Trx] @iBACHNUMB char(15), @iSERIES smallint, @iDOCTYPE smallint, @iDispDistID   int = 0,  @oHdrID int = 0 OUTPUT,  @oActualTrxNo  int = 0 OUTPUT  AS BEGIN  DECLARE @TrxNo int,  @Min int,  @int_lHdrID int    SELECT @TrxNo = 0,   @Min = 0,  @int_lHdrID = 0   SELECT aaSubLedgerHdrID,   aaSubLedgerDistID,   COMPTRNM,  IDENTITY(int, 1,1) AS DisplayDistID  INTO #newtable1   FROM (  SELECT DIST.*, DOCNUMBR   FROM AAG20001 DIST INNER JOIN AAG20000 HDR  ON HDR.aaSubLedgerHdrID = DIST.aaSubLedgerHdrID  WHERE SERIES = @iSERIES AND   DOCTYPE = @iDOCTYPE) AA   RIGHT OUTER JOIN UPR10302 UPR ON AA.DOCNUMBR = UPR.COMPTRNM  WHERE COMPTRTP = 1   and  BACHNUMB = @iBACHNUMB  ORDER BY COMPTRNM   SELECT @TrxNo = COMPTRNM, @int_lHdrID = aaSubLedgerHdrID FROM #newtable1 WHERE DisplayDistID = abs(@iDispDistID)    SELECT @oActualTrxNo = @TrxNo,  @oHdrID = @int_lHdrID END    
GO
GRANT EXECUTE ON  [dbo].[aagGetActualTrxNo_UPR_Trx] TO [DYNGRP]
GO
