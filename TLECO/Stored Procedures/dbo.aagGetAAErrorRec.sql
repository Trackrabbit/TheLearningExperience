SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[aagGetAAErrorRec]  @aaSubLedgerHdrID INT   OUTPUT,  @DOCNUMBR CHAR (21)OUTPUT,  @DOCTYPE SMALLINT OUTPUT,  @Master_ID CHAR(31) OUTPUT,  @SERIES SMALLINT OUTPUT  AS BEGIN  SELECT @aaSubLedgerHdrID = ISNULL(aaSubLedgerHdrID,0)FROM AAG2000E   WHERE DEX_ROW_ID = (SELECT MIN(DEX_ROW_ID)FROM AAG2000E)   IF @aaSubLedgerHdrID>0   BEGIN  SELECT @SERIES = SERIES,   @DOCTYPE = DOCTYPE, @DOCNUMBR = DOCNUMBR, @Master_ID = Master_ID   FROM AAG20000  WHERE aaSubLedgerHdrID = @aaSubLedgerHdrID  END  END    
GO
GRANT EXECUTE ON  [dbo].[aagGetAAErrorRec] TO [DYNGRP]
GO
