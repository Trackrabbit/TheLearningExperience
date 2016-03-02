SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01403N_3] (@BS int, @USERID char(15), @Status smallint, @Completion_Date datetime, @DEX_ROW_ID int, @USERID_RS char(15), @Status_RS smallint, @Completion_Date_RS datetime, @USERID_RE char(15), @Status_RE smallint, @Completion_Date_RE datetime) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CMPANYID, CMRECNUM, APLICFIL, Status, DUEDATE, RECURRINGTASK, RECURPATTRN, FREQUENCY, FRQRCINT, DAYSOFTHEWEEK, MONTHINTERVAL, MTHSLCTD, DAYOFMONTH, WHICHWEEKDAY, WeekDay, STRTDATE, ENDDATETYPE, TIMETREP, ENDINGDT, Priority, Completion_Date, COMPLETEDBY, CRUSRID, TASKTYPE, LinkTo, CmdID, CmdFormID, CmdDictID, FilePath, INET1, USRDAT01, USRDAT02, USRDAT03, USRTSK01, USRTSK02, USRTSK03, USRTSK04, USRTSK05, DEX_ROW_ID, TXTFIELD FROM .SY01403 WHERE ( USERID = @USERID AND Status = @Status AND Completion_Date = @Completion_Date AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND Status = @Status AND Completion_Date > @Completion_Date OR USERID = @USERID AND Status > @Status OR USERID > @USERID ) ORDER BY USERID ASC, Status ASC, Completion_Date ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CMPANYID, CMRECNUM, APLICFIL, Status, DUEDATE, RECURRINGTASK, RECURPATTRN, FREQUENCY, FRQRCINT, DAYSOFTHEWEEK, MONTHINTERVAL, MTHSLCTD, DAYOFMONTH, WHICHWEEKDAY, WeekDay, STRTDATE, ENDDATETYPE, TIMETREP, ENDINGDT, Priority, Completion_Date, COMPLETEDBY, CRUSRID, TASKTYPE, LinkTo, CmdID, CmdFormID, CmdDictID, FilePath, INET1, USRDAT01, USRDAT02, USRDAT03, USRTSK01, USRTSK02, USRTSK03, USRTSK04, USRTSK05, DEX_ROW_ID, TXTFIELD FROM .SY01403 WHERE USERID = @USERID_RS AND Status BETWEEN @Status_RS AND @Status_RE AND Completion_Date BETWEEN @Completion_Date_RS AND @Completion_Date_RE AND ( USERID = @USERID AND Status = @Status AND Completion_Date = @Completion_Date AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND Status = @Status AND Completion_Date > @Completion_Date OR USERID = @USERID AND Status > @Status OR USERID > @USERID ) ORDER BY USERID ASC, Status ASC, Completion_Date ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, CMPANYID, CMRECNUM, APLICFIL, Status, DUEDATE, RECURRINGTASK, RECURPATTRN, FREQUENCY, FRQRCINT, DAYSOFTHEWEEK, MONTHINTERVAL, MTHSLCTD, DAYOFMONTH, WHICHWEEKDAY, WeekDay, STRTDATE, ENDDATETYPE, TIMETREP, ENDINGDT, Priority, Completion_Date, COMPLETEDBY, CRUSRID, TASKTYPE, LinkTo, CmdID, CmdFormID, CmdDictID, FilePath, INET1, USRDAT01, USRDAT02, USRDAT03, USRTSK01, USRTSK02, USRTSK03, USRTSK04, USRTSK05, DEX_ROW_ID, TXTFIELD FROM .SY01403 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND Status BETWEEN @Status_RS AND @Status_RE AND Completion_Date BETWEEN @Completion_Date_RS AND @Completion_Date_RE AND ( USERID = @USERID AND Status = @Status AND Completion_Date = @Completion_Date AND DEX_ROW_ID > @DEX_ROW_ID OR USERID = @USERID AND Status = @Status AND Completion_Date > @Completion_Date OR USERID = @USERID AND Status > @Status OR USERID > @USERID ) ORDER BY USERID ASC, Status ASC, Completion_Date ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01403N_3] TO [DYNGRP]
GO
