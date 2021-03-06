SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_OR022330UN_3] (@BS int, @ORSETUPCODE_I char(31), @ORSETUPCODE_I_RS char(31), @ORSETUPCODE_I_RE char(31)) AS  set nocount on IF @ORSETUPCODE_I_RS IS NULL BEGIN SELECT TOP 25  ORSETUPCODE_I, SEQORDER_I, ORIENTATIONITEM_I, PERSONRESPONSIBLE_I, EVENTSTARTDATE_I, EVENTSTARTTIME_I, EVENTENDDATE_I, EVENTENDTIME_I, DEX_ROW_ID FROM .OR022330 WHERE ( ORSETUPCODE_I > @ORSETUPCODE_I ) ORDER BY ORSETUPCODE_I ASC, DEX_ROW_ID ASC END ELSE IF @ORSETUPCODE_I_RS = @ORSETUPCODE_I_RE BEGIN SELECT TOP 25  ORSETUPCODE_I, SEQORDER_I, ORIENTATIONITEM_I, PERSONRESPONSIBLE_I, EVENTSTARTDATE_I, EVENTSTARTTIME_I, EVENTENDDATE_I, EVENTENDTIME_I, DEX_ROW_ID FROM .OR022330 WHERE ORSETUPCODE_I = @ORSETUPCODE_I_RS AND ( ORSETUPCODE_I > @ORSETUPCODE_I ) ORDER BY ORSETUPCODE_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  ORSETUPCODE_I, SEQORDER_I, ORIENTATIONITEM_I, PERSONRESPONSIBLE_I, EVENTSTARTDATE_I, EVENTSTARTTIME_I, EVENTENDDATE_I, EVENTENDTIME_I, DEX_ROW_ID FROM .OR022330 WHERE ORSETUPCODE_I BETWEEN @ORSETUPCODE_I_RS AND @ORSETUPCODE_I_RE AND ( ORSETUPCODE_I > @ORSETUPCODE_I ) ORDER BY ORSETUPCODE_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_OR022330UN_3] TO [DYNGRP]
GO
