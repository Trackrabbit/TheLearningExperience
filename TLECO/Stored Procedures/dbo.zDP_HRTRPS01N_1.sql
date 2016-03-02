SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRTRPS01N_1] (@BS int, @POSITIONCODE_I char(7), @COURSEID_I char(7), @POSITIONCODE_I_RS char(7), @COURSEID_I_RS char(7), @POSITIONCODE_I_RE char(7), @COURSEID_I_RE char(7)) AS  set nocount on IF @POSITIONCODE_I_RS IS NULL BEGIN SELECT TOP 25  POSITIONCODE_I, COURSEID_I, DEX_ROW_ID FROM .HRTRPS01 WHERE ( POSITIONCODE_I = @POSITIONCODE_I AND COURSEID_I > @COURSEID_I OR POSITIONCODE_I > @POSITIONCODE_I ) ORDER BY POSITIONCODE_I ASC, COURSEID_I ASC END ELSE IF @POSITIONCODE_I_RS = @POSITIONCODE_I_RE BEGIN SELECT TOP 25  POSITIONCODE_I, COURSEID_I, DEX_ROW_ID FROM .HRTRPS01 WHERE POSITIONCODE_I = @POSITIONCODE_I_RS AND COURSEID_I BETWEEN @COURSEID_I_RS AND @COURSEID_I_RE AND ( POSITIONCODE_I = @POSITIONCODE_I AND COURSEID_I > @COURSEID_I OR POSITIONCODE_I > @POSITIONCODE_I ) ORDER BY POSITIONCODE_I ASC, COURSEID_I ASC END ELSE BEGIN SELECT TOP 25  POSITIONCODE_I, COURSEID_I, DEX_ROW_ID FROM .HRTRPS01 WHERE POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND COURSEID_I BETWEEN @COURSEID_I_RS AND @COURSEID_I_RE AND ( POSITIONCODE_I = @POSITIONCODE_I AND COURSEID_I > @COURSEID_I OR POSITIONCODE_I > @POSITIONCODE_I ) ORDER BY POSITIONCODE_I ASC, COURSEID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTRPS01N_1] TO [DYNGRP]
GO