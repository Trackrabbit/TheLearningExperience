SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRTRPC02F_1] (@POSITIONCODE_I_RS char(7), @COURSEID_I_RS char(7), @ICLASSID_I_RS char(7), @POSITIONCODE_I_RE char(7), @COURSEID_I_RE char(7), @ICLASSID_I_RE char(7)) AS  set nocount on IF @POSITIONCODE_I_RS IS NULL BEGIN SELECT TOP 25  POSITIONCODE_I, COURSEID_I, ICLASSID_I, DEX_ROW_ID FROM .HRTRPC02 ORDER BY POSITIONCODE_I ASC, COURSEID_I ASC, ICLASSID_I ASC END ELSE IF @POSITIONCODE_I_RS = @POSITIONCODE_I_RE BEGIN SELECT TOP 25  POSITIONCODE_I, COURSEID_I, ICLASSID_I, DEX_ROW_ID FROM .HRTRPC02 WHERE POSITIONCODE_I = @POSITIONCODE_I_RS AND COURSEID_I BETWEEN @COURSEID_I_RS AND @COURSEID_I_RE AND ICLASSID_I BETWEEN @ICLASSID_I_RS AND @ICLASSID_I_RE ORDER BY POSITIONCODE_I ASC, COURSEID_I ASC, ICLASSID_I ASC END ELSE BEGIN SELECT TOP 25  POSITIONCODE_I, COURSEID_I, ICLASSID_I, DEX_ROW_ID FROM .HRTRPC02 WHERE POSITIONCODE_I BETWEEN @POSITIONCODE_I_RS AND @POSITIONCODE_I_RE AND COURSEID_I BETWEEN @COURSEID_I_RS AND @COURSEID_I_RE AND ICLASSID_I BETWEEN @ICLASSID_I_RS AND @ICLASSID_I_RE ORDER BY POSITIONCODE_I ASC, COURSEID_I ASC, ICLASSID_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTRPC02F_1] TO [DYNGRP]
GO
