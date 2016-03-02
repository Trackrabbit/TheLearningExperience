SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE procedure [dbo].[aagDeriveChildDimCode]  @I_cParentTrxDimID int = null,   @I_cParentTrxDimCodeID int = null,  @IO_cChildTrxDimID int = null output,   @IO_cChildTrxDimCodeID int = null output as set @IO_cChildTrxDimID = 0  set @IO_cChildTrxDimCodeID = 0  begin  select @IO_cChildTrxDimID = aaRelTrxDimID from AAG00405   where aaTrxDimID = @I_cParentTrxDimID and aaTrxDimRelType = 4   select @IO_cChildTrxDimCodeID = aaRelTrxDimCodeID from AAG00406   where aaTrxDimID = @I_cParentTrxDimID and aaTrxDimCodeID = @I_cParentTrxDimCodeID   and aaRelTrxDimID = @IO_cChildTrxDimID end    
GO
GRANT EXECUTE ON  [dbo].[aagDeriveChildDimCode] TO [DYNGRP]
GO
