SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_CONT_UpdateNonBilledLines] (  @CONSTS int = NULL,   @CONTNBR varchar(11) = NULL,  @Line numeric(19,5) )   As set nocount on  if @CONSTS is NULL or @CONTNBR is NULL  begin   return -1  end  UPDATE SVC00601 with (rowlock) SET Liability_Months = Liability_Months + 1 WHERE (CONSTS = @CONSTS) AND   (CONTNBR = @CONTNBR) and LNSEQNBR = @Line  AND   (BILSTAT = 0)  return   
GO
GRANT EXECUTE ON  [dbo].[SVC_CONT_UpdateNonBilledLines] TO [DYNGRP]
GO
