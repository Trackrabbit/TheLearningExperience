SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TATM0130N_2] (@BS int, @DSCRIPTN char(31), @TIMECODE_I char(7), @DSCRIPTN_RS char(31), @TIMECODE_I_RS char(7), @DSCRIPTN_RE char(31), @TIMECODE_I_RE char(7)) AS  set nocount on IF @DSCRIPTN_RS IS NULL BEGIN SELECT TOP 25  TIMECODE_I, DSCRIPTN, INACTIVE, TIMETYPE_I, PAYRCORD, PAYTYPE, SENIORITY_I, OVERTIMECODE_I, HOURSOVERTIME_I, BSPAYRCD, PAYPEROD, WRNTIMEFALLSBLWZERO, ACCRUETIMEBENEFITS_I, GBTABEN, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .TATM0130 WHERE ( DSCRIPTN = @DSCRIPTN AND TIMECODE_I > @TIMECODE_I OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, TIMECODE_I ASC END ELSE IF @DSCRIPTN_RS = @DSCRIPTN_RE BEGIN SELECT TOP 25  TIMECODE_I, DSCRIPTN, INACTIVE, TIMETYPE_I, PAYRCORD, PAYTYPE, SENIORITY_I, OVERTIMECODE_I, HOURSOVERTIME_I, BSPAYRCD, PAYPEROD, WRNTIMEFALLSBLWZERO, ACCRUETIMEBENEFITS_I, GBTABEN, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .TATM0130 WHERE DSCRIPTN = @DSCRIPTN_RS AND TIMECODE_I BETWEEN @TIMECODE_I_RS AND @TIMECODE_I_RE AND ( DSCRIPTN = @DSCRIPTN AND TIMECODE_I > @TIMECODE_I OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, TIMECODE_I ASC END ELSE BEGIN SELECT TOP 25  TIMECODE_I, DSCRIPTN, INACTIVE, TIMETYPE_I, PAYRCORD, PAYTYPE, SENIORITY_I, OVERTIMECODE_I, HOURSOVERTIME_I, BSPAYRCD, PAYPEROD, WRNTIMEFALLSBLWZERO, ACCRUETIMEBENEFITS_I, GBTABEN, CHANGEBY_I, CHANGEDATE_I, NOTESINDEX_I, DEX_ROW_ID FROM .TATM0130 WHERE DSCRIPTN BETWEEN @DSCRIPTN_RS AND @DSCRIPTN_RE AND TIMECODE_I BETWEEN @TIMECODE_I_RS AND @TIMECODE_I_RE AND ( DSCRIPTN = @DSCRIPTN AND TIMECODE_I > @TIMECODE_I OR DSCRIPTN > @DSCRIPTN ) ORDER BY DSCRIPTN ASC, TIMECODE_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TATM0130N_2] TO [DYNGRP]
GO
