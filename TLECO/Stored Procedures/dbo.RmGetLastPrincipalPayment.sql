SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[RmGetLastPrincipalPayment]  @iSCHNUM varchar(25), @oDOCNUM varchar(25) OUTPUT  AS  DECLARE  @lERRORSTATUS int  SELECT   DOCNUMBR INTO  #DOCNUMTEMP  FROM   RM20101 WHERE  DOCNUMBR LIKE @iSCHNUM + '[A-Z]%'  INSERT INTO  #DOCNUMTEMP SELECT  DOCNUMBR FROM  RM30101 WHERE  DOCNUMBR LIKE @iSCHNUM + '[A-Z]%'  SELECT  @oDOCNUM = MAX(DOCNUMBR)  FROM  #DOCNUMTEMP   RETURN (@lERRORSTATUS)    
GO
GRANT EXECUTE ON  [dbo].[RmGetLastPrincipalPayment] TO [DYNGRP]
GO