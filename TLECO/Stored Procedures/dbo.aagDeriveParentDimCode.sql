SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagDeriveParentDimCode]  @I_nTrxDimID int = null,   @I_nTrxDCodeID int = null,  @IO_cParentTrxDimID int = null output,   @IO_cParentTrxDimCodeID int = null output,  @IO_cParentTrxDim char(15) = null output,   @IO_cParentTrxDimCode char(30) = null output,  @IO_cParentTrxDimCodeDesc char(50) = null output as set  @IO_cParentTrxDimID = 0  set  @IO_cParentTrxDimCodeID = 0 set  @IO_cParentTrxDim = space(0) set  @IO_cParentTrxDimCode = space(0) set  @IO_cParentTrxDimCodeDesc = space(0)  begin  select @IO_cParentTrxDimID = aaRelTrxDimID from AAG00405   where aaTrxDimID = @I_nTrxDimID and aaTrxDimRelType = 3   select @IO_cParentTrxDimCodeID = aaRelTrxDimCodeID from AAG00406   where aaTrxDimID = @I_nTrxDimID and aaTrxDimCodeID = @I_nTrxDCodeID   and aaRelTrxDimID = @IO_cParentTrxDimID   select @IO_cParentTrxDim = aaTrxDim from AAG00400   where aaTrxDimID = @IO_cParentTrxDimID   select @IO_cParentTrxDimCode = aaTrxDimCode, @IO_cParentTrxDimCodeDesc = aaTrxDimCodeDescr   from AAG00401 where aaTrxDimID = @IO_cParentTrxDimID and aaTrxDimCodeID = @IO_cParentTrxDimCodeID end    
GO
GRANT EXECUTE ON  [dbo].[aagDeriveParentDimCode] TO [DYNGRP]
GO
