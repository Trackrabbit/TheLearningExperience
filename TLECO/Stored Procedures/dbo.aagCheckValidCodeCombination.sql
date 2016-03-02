SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagCheckValidCodeCombination]  @I_nTrxDimID int = NULL,   @I_nTrxDimCodeID int = NULL,  @I_nRelTrxDimID int = NULL,   @I_nRelTrxDimCodeID int = NULL,  @IO_fValidCodeComb TINYINT = NULL OUTPUT AS DECLARE  @TrxDimRelType int,   @ParentTrxDimID int,  @TrxDimCodeID int,  @RelTrxDimCodeID int  SET @IO_fValidCodeComb = 0  BEGIN  SELECT @TrxDimRelType =aaTrxDimRelType FROM AAG00405   WHERE aaTrxDimID = @I_nTrxDimID AND aaRelTrxDimID = @I_nRelTrxDimID   IF @TrxDimRelType = 1   BEGIN  SELECT @IO_fValidCodeComb = 1  RETURN  END  ELSE  IF @TrxDimRelType = 2   BEGIN  SELECT @IO_fValidCodeComb = 0  RETURN  END  IF (@TrxDimRelType = 3 OR @TrxDimRelType = 4 OR @TrxDimRelType = 5)  BEGIN  IF EXISTS(SELECT aaTrxDimID FROM AAG00406 WHERE aaTrxDimID = @I_nTrxDimID   AND aaTrxDimCodeID = @I_nTrxDimCodeID  AND aaRelTrxDimID = @I_nRelTrxDimID   AND aaRelTrxDimCodeID = @I_nRelTrxDimCodeID)  SELECT @IO_fValidCodeComb = 1  ELSE  SELECT @IO_fValidCodeComb = 0  RETURN  END  ELSE  BEGIN  SELECT @IO_fValidCodeComb = 1  RETURN  END END    
GO
GRANT EXECUTE ON  [dbo].[aagCheckValidCodeCombination] TO [DYNGRP]
GO
