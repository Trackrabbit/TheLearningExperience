SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE     procedure [dbo].[aagIsAccBelongsToAllocationAcc] @I_nAccIndx int = 0, @O_fIsBelongsToAllocAcc  tinyint = 0 output as if EXISTS (select top 1 DSTINDX from GL00103 where DSTINDX =  @I_nAccIndx)  begin  set @O_fIsBelongsToAllocAcc = 1  return  end else if EXISTS (select top 1 DSTINDX from GL00104 where DSTINDX =  @I_nAccIndx)  begin  set @O_fIsBelongsToAllocAcc = 1  return  end    
GO
GRANT EXECUTE ON  [dbo].[aagIsAccBelongsToAllocationAcc] TO [DYNGRP]
GO
