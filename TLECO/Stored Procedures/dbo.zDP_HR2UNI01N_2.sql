SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2UNI01N_2] (@BS int, @SENIORITYDATE_I datetime, @EMPID_I char(15), @DEX_ROW_ID int, @SENIORITYDATE_I_RS datetime, @EMPID_I_RS char(15), @SENIORITYDATE_I_RE datetime, @EMPID_I_RE char(15)) AS  set nocount on IF @SENIORITYDATE_I_RS IS NULL BEGIN SELECT TOP 25  EMPID_I, SENIORITYDATE_I, STRTDATE, ENDDATE, UNIONNAME_I, UNIONDUESAMOUNT_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, CONTACTNUM_I, DEX_ROW_ID FROM .HR2UNI01 WHERE ( SENIORITYDATE_I = @SENIORITYDATE_I AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR SENIORITYDATE_I = @SENIORITYDATE_I AND EMPID_I > @EMPID_I OR SENIORITYDATE_I < @SENIORITYDATE_I ) ORDER BY SENIORITYDATE_I DESC, EMPID_I ASC, DEX_ROW_ID ASC END ELSE IF @SENIORITYDATE_I_RS = @SENIORITYDATE_I_RE BEGIN SELECT TOP 25  EMPID_I, SENIORITYDATE_I, STRTDATE, ENDDATE, UNIONNAME_I, UNIONDUESAMOUNT_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, CONTACTNUM_I, DEX_ROW_ID FROM .HR2UNI01 WHERE SENIORITYDATE_I = @SENIORITYDATE_I_RE AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( SENIORITYDATE_I = @SENIORITYDATE_I AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR SENIORITYDATE_I = @SENIORITYDATE_I AND EMPID_I > @EMPID_I OR SENIORITYDATE_I < @SENIORITYDATE_I ) ORDER BY SENIORITYDATE_I DESC, EMPID_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  EMPID_I, SENIORITYDATE_I, STRTDATE, ENDDATE, UNIONNAME_I, UNIONDUESAMOUNT_I, NOTESINDEX_I, CHANGEBY_I, CHANGEDATE_I, CONTACTNUM_I, DEX_ROW_ID FROM .HR2UNI01 WHERE SENIORITYDATE_I BETWEEN @SENIORITYDATE_I_RE AND @SENIORITYDATE_I_RS AND EMPID_I BETWEEN @EMPID_I_RS AND @EMPID_I_RE AND ( SENIORITYDATE_I = @SENIORITYDATE_I AND EMPID_I = @EMPID_I AND DEX_ROW_ID > @DEX_ROW_ID OR SENIORITYDATE_I = @SENIORITYDATE_I AND EMPID_I > @EMPID_I OR SENIORITYDATE_I < @SENIORITYDATE_I ) ORDER BY SENIORITYDATE_I DESC, EMPID_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2UNI01N_2] TO [DYNGRP]
GO
