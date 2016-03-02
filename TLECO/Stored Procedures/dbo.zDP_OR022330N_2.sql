SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_OR022330N_2] (@BS int, @ORSETUPCODE_I char(31), @ORIENTATIONITEM_I char(51), @ORSETUPCODE_I_RS char(31), @ORIENTATIONITEM_I_RS char(51), @ORSETUPCODE_I_RE char(31), @ORIENTATIONITEM_I_RE char(51)) AS  set nocount on IF @ORSETUPCODE_I_RS IS NULL BEGIN SELECT TOP 25  ORSETUPCODE_I, SEQORDER_I, ORIENTATIONITEM_I, PERSONRESPONSIBLE_I, EVENTSTARTDATE_I, EVENTSTARTTIME_I, EVENTENDDATE_I, EVENTENDTIME_I, DEX_ROW_ID FROM .OR022330 WHERE ( ORSETUPCODE_I = @ORSETUPCODE_I AND ORIENTATIONITEM_I > @ORIENTATIONITEM_I OR ORSETUPCODE_I > @ORSETUPCODE_I ) ORDER BY ORSETUPCODE_I ASC, ORIENTATIONITEM_I ASC END ELSE IF @ORSETUPCODE_I_RS = @ORSETUPCODE_I_RE BEGIN SELECT TOP 25  ORSETUPCODE_I, SEQORDER_I, ORIENTATIONITEM_I, PERSONRESPONSIBLE_I, EVENTSTARTDATE_I, EVENTSTARTTIME_I, EVENTENDDATE_I, EVENTENDTIME_I, DEX_ROW_ID FROM .OR022330 WHERE ORSETUPCODE_I = @ORSETUPCODE_I_RS AND ORIENTATIONITEM_I BETWEEN @ORIENTATIONITEM_I_RS AND @ORIENTATIONITEM_I_RE AND ( ORSETUPCODE_I = @ORSETUPCODE_I AND ORIENTATIONITEM_I > @ORIENTATIONITEM_I OR ORSETUPCODE_I > @ORSETUPCODE_I ) ORDER BY ORSETUPCODE_I ASC, ORIENTATIONITEM_I ASC END ELSE BEGIN SELECT TOP 25  ORSETUPCODE_I, SEQORDER_I, ORIENTATIONITEM_I, PERSONRESPONSIBLE_I, EVENTSTARTDATE_I, EVENTSTARTTIME_I, EVENTENDDATE_I, EVENTENDTIME_I, DEX_ROW_ID FROM .OR022330 WHERE ORSETUPCODE_I BETWEEN @ORSETUPCODE_I_RS AND @ORSETUPCODE_I_RE AND ORIENTATIONITEM_I BETWEEN @ORIENTATIONITEM_I_RS AND @ORIENTATIONITEM_I_RE AND ( ORSETUPCODE_I = @ORSETUPCODE_I AND ORIENTATIONITEM_I > @ORIENTATIONITEM_I OR ORSETUPCODE_I > @ORSETUPCODE_I ) ORDER BY ORSETUPCODE_I ASC, ORIENTATIONITEM_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_OR022330N_2] TO [DYNGRP]
GO