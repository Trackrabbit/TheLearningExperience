SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRTRA042F_1] (@COURSEID_I_RS char(7), @ICLASSID_I_RS char(7), @SKILLNUMBER_I_RS smallint, @COURSEID_I_RE char(7), @ICLASSID_I_RE char(7), @SKILLNUMBER_I_RE smallint) AS  set nocount on IF @COURSEID_I_RS IS NULL BEGIN SELECT TOP 25  COURSEID_I, ICLASSID_I, SKILLNUMBER_I, DEX_ROW_ID FROM .HRTRA042 ORDER BY COURSEID_I ASC, ICLASSID_I ASC, SKILLNUMBER_I ASC END ELSE IF @COURSEID_I_RS = @COURSEID_I_RE BEGIN SELECT TOP 25  COURSEID_I, ICLASSID_I, SKILLNUMBER_I, DEX_ROW_ID FROM .HRTRA042 WHERE COURSEID_I = @COURSEID_I_RS AND ICLASSID_I BETWEEN @ICLASSID_I_RS AND @ICLASSID_I_RE AND SKILLNUMBER_I BETWEEN @SKILLNUMBER_I_RS AND @SKILLNUMBER_I_RE ORDER BY COURSEID_I ASC, ICLASSID_I ASC, SKILLNUMBER_I ASC END ELSE BEGIN SELECT TOP 25  COURSEID_I, ICLASSID_I, SKILLNUMBER_I, DEX_ROW_ID FROM .HRTRA042 WHERE COURSEID_I BETWEEN @COURSEID_I_RS AND @COURSEID_I_RE AND ICLASSID_I BETWEEN @ICLASSID_I_RS AND @ICLASSID_I_RE AND SKILLNUMBER_I BETWEEN @SKILLNUMBER_I_RS AND @SKILLNUMBER_I_RE ORDER BY COURSEID_I ASC, ICLASSID_I ASC, SKILLNUMBER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRTRA042F_1] TO [DYNGRP]
GO
