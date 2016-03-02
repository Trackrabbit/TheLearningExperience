SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_paActvtyUN_1] (@BS int, @LockboxID char(15), @DATE1 datetime, @TIME1 datetime, @LockboxID_RS char(15), @DATE1_RS datetime, @TIME1_RS datetime, @LockboxID_RE char(15), @DATE1_RE datetime, @TIME1_RE datetime) AS  set nocount on IF @LockboxID_RS IS NULL BEGIN SELECT TOP 25  LockboxID, DATE1, TIME1, USERID, BACHNUMB, BCHTOTAL, NUMOFTRX, NoOfTrxRejected, STRNG132, DEX_ROW_ID FROM .paActvty WHERE ( LockboxID = @LockboxID AND DATE1 = @DATE1 AND TIME1 < @TIME1 OR LockboxID = @LockboxID AND DATE1 < @DATE1 OR LockboxID > @LockboxID ) ORDER BY LockboxID ASC, DATE1 DESC, TIME1 DESC, DEX_ROW_ID ASC END ELSE IF @LockboxID_RS = @LockboxID_RE BEGIN SELECT TOP 25  LockboxID, DATE1, TIME1, USERID, BACHNUMB, BCHTOTAL, NUMOFTRX, NoOfTrxRejected, STRNG132, DEX_ROW_ID FROM .paActvty WHERE LockboxID = @LockboxID_RS AND DATE1 BETWEEN @DATE1_RE AND @DATE1_RS AND TIME1 BETWEEN @TIME1_RE AND @TIME1_RS AND ( LockboxID = @LockboxID AND DATE1 = @DATE1 AND TIME1 < @TIME1 OR LockboxID = @LockboxID AND DATE1 < @DATE1 OR LockboxID > @LockboxID ) ORDER BY LockboxID ASC, DATE1 DESC, TIME1 DESC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  LockboxID, DATE1, TIME1, USERID, BACHNUMB, BCHTOTAL, NUMOFTRX, NoOfTrxRejected, STRNG132, DEX_ROW_ID FROM .paActvty WHERE LockboxID BETWEEN @LockboxID_RS AND @LockboxID_RE AND DATE1 BETWEEN @DATE1_RE AND @DATE1_RS AND TIME1 BETWEEN @TIME1_RE AND @TIME1_RS AND ( LockboxID = @LockboxID AND DATE1 = @DATE1 AND TIME1 < @TIME1 OR LockboxID = @LockboxID AND DATE1 < @DATE1 OR LockboxID > @LockboxID ) ORDER BY LockboxID ASC, DATE1 DESC, TIME1 DESC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_paActvtyUN_1] TO [DYNGRP]
GO
