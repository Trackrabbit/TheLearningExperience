SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHR2UN01F_3] (@UNIONNAME_I_RS char(31), @EMPID_I_RS char(15), @UNIONNAME_I_RE char(31), @EMPID_I_RE char(15)) AS  set nocount on IF @UNIONNAME_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, SENIORITYDATE_I, STRTDATE, ENDDATE, UNIONNAME_I, UNIONDUESAMOUNT_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, CONTACTNUM_I, DEX_ROW_ID FROM .AHR2UN01 ORDER BY UNIONNAME_I ASC, EMPID_I ASC, DEX_ROW_ID ASC END ELSE IF @UNIONNAME_I_RS = @UNIONNAME_I_RE BEGIN SELECT TOP 25  EMPID_I, SENIORITYDATE_I, STRTDATE, ENDDATE, UNIONNAME_I, UNIONDUESAMOUNT_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, CONTACTNUM_I, DEX_ROW_ID FROM .AHR2UN01 WHERE UNIONNAME_I = @UNIONNAME_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY UNIONNAME_I ASC, EMPID_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, SENIORITYDATE_I, STRTDATE, ENDDATE, UNIONNAME_I, UNIONDUESAMOUNT_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, CONTACTNUM_I, DEX_ROW_ID FROM .AHR2UN01 WHERE UNIONNAME_I BETWEEN @UNIONNAME_I_RS AND @UNIONNAME_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE ORDER BY UNIONNAME_I ASC, EMPID_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHR2UN01F_3] TO [DYNGRP]
GO