SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_palbdtlL_1] (@LockboxID_RS char(15), @paRowType_RS smallint, @paFieldNumber_RS smallint, @LockboxID_RE char(15), @paRowType_RE smallint, @paFieldNumber_RE smallint) AS  set nocount on IF @LockboxID_RS IS NULL BEGIN SELECT TOP 25  LockboxID, paRowType, paFieldNumber, paMapsTo, paStartPosition, EndPosition, DEX_ROW_ID FROM .palbdtl ORDER BY LockboxID DESC, paRowType DESC, paFieldNumber DESC END ELSE IF @LockboxID_RS = @LockboxID_RE BEGIN SELECT TOP 25  LockboxID, paRowType, paFieldNumber, paMapsTo, paStartPosition, EndPosition, DEX_ROW_ID FROM .palbdtl WHERE LockboxID = @LockboxID_RS AND paRowType BETWEEN @paRowType_RS AND @paRowType_RE AND paFieldNumber BETWEEN @paFieldNumber_RS AND @paFieldNumber_RE ORDER BY LockboxID DESC, paRowType DESC, paFieldNumber DESC END ELSE BEGIN SELECT TOP 25  LockboxID, paRowType, paFieldNumber, paMapsTo, paStartPosition, EndPosition, DEX_ROW_ID FROM .palbdtl WHERE LockboxID BETWEEN @LockboxID_RS AND @LockboxID_RE AND paRowType BETWEEN @paRowType_RS AND @paRowType_RE AND paFieldNumber BETWEEN @paFieldNumber_RS AND @paFieldNumber_RE ORDER BY LockboxID DESC, paRowType DESC, paFieldNumber DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_palbdtlL_1] TO [DYNGRP]
GO
