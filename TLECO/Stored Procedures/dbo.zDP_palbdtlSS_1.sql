SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbdtlSS_1] (@LockboxID char(15), @paRowType smallint, @paFieldNumber smallint) AS  set nocount on SELECT TOP 1  LockboxID, paRowType, paFieldNumber, paMapsTo, paStartPosition, EndPosition, DEX_ROW_ID FROM .palbdtl WHERE LockboxID = @LockboxID AND paRowType = @paRowType AND paFieldNumber = @paFieldNumber ORDER BY LockboxID ASC, paRowType ASC, paFieldNumber ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbdtlSS_1] TO [DYNGRP]
GO
