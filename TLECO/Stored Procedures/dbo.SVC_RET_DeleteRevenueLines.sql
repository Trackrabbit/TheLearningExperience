SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_RET_DeleteRevenueLines]  (  @CONSTS smallint,  @CONTNBR char(11),  @LNSEQNBR numeric(19,5)  ) As  delete from SVC00604 where CONSTS = @CONSTS and CONTNBR = @CONTNBR and LNSEQNBR = @LNSEQNBR    
GO
GRANT EXECUTE ON  [dbo].[SVC_RET_DeleteRevenueLines] TO [DYNGRP]
GO
