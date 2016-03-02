SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[popDoesRequisitionHaveInvalidData]   @I_cReqNumber char(21) = NULL,  @O_fHasInvalidData tinyint     = NULL output,  @O_iErrorState      int         = NULL  output  as   select  @O_fHasInvalidData = 0,  @O_iErrorState  = 0  if  @I_cReqNumber is NULL  begin  SELECT @O_iErrorState = 20949  RETURN end   if (SELECT COUNT(*) FROM POP10210  where POPRequisitionNumber = @I_cReqNumber AND InvalidDataFlag <> 0) > 0  SELECT @O_fHasInvalidData = 1  RETURN    
GO
GRANT EXECUTE ON  [dbo].[popDoesRequisitionHaveInvalidData] TO [DYNGRP]
GO
