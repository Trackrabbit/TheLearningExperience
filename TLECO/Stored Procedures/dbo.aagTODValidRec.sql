SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create  PROC [dbo].[aagTODValidRec]  @ACTINDX int,  @CRDTAMNT numeric(19,5),  @DEBITAMT numeric(19,5),  @ORCRDAMT numeric(19,5),  @ORDBTAMT numeric(19,5),   @Status   smallint OUTPUT  AS BEGIN  SELECT @Status = 0  IF @ACTINDX > 0  BEGIN  IF NOT EXISTS(SELECT ACTINDX FROM GL00100 WHERE ACTINDX = @ACTINDX)  BEGIN  SELECT @Status = 1  END  END  ELSE  IF @ACTINDX <= 0  BEGIN  SELECT @Status = 1  END   IF (@CRDTAMNT <= 0 AND @DEBITAMT <= 0 AND @ORCRDAMT <= 0 AND @ORDBTAMT = 0)  BEGIN  SELECT @Status = 1  END  END    
GO
GRANT EXECUTE ON  [dbo].[aagTODValidRec] TO [DYNGRP]
GO