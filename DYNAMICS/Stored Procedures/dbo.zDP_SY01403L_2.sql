SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01403L_2] (@USERID_RS char(15), @Status_RS smallint, @DUEDATE_RS datetime, @USERID_RE char(15), @Status_RE smallint, @DUEDATE_RE datetime) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CMPANYID, CMRECNUM, APLICFIL, Status, DUEDATE, RECURRINGTASK, RECURPATTRN, FREQUENCY, FRQRCINT, DAYSOFTHEWEEK, MONTHINTERVAL, MTHSLCTD, DAYOFMONTH, WHICHWEEKDAY, WeekDay, STRTDATE, ENDDATETYPE, TIMETREP, ENDINGDT, Priority, Completion_Date, COMPLETEDBY, CRUSRID, TASKTYPE, LinkTo, CmdID, CmdFormID, CmdDictID, FilePath, INET1, USRDAT01, USRDAT02, USRDAT03, USRTSK01, USRTSK02, USRTSK03, USRTSK04, USRTSK05, DEX_ROW_ID, TXTFIELD FROM .SY01403 ORDER BY USERID DESC, Status DESC, DUEDATE DESC, DEX_ROW_ID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CMPANYID, CMRECNUM, APLICFIL, Status, DUEDATE, RECURRINGTASK, RECURPATTRN, FREQUENCY, FRQRCINT, DAYSOFTHEWEEK, MONTHINTERVAL, MTHSLCTD, DAYOFMONTH, WHICHWEEKDAY, WeekDay, STRTDATE, ENDDATETYPE, TIMETREP, ENDINGDT, Priority, Completion_Date, COMPLETEDBY, CRUSRID, TASKTYPE, LinkTo, CmdID, CmdFormID, CmdDictID, FilePath, INET1, USRDAT01, USRDAT02, USRDAT03, USRTSK01, USRTSK02, USRTSK03, USRTSK04, USRTSK05, DEX_ROW_ID, TXTFIELD FROM .SY01403 WHERE USERID = @USERID_RS AND Status BETWEEN @Status_RS AND @Status_RE AND DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE ORDER BY USERID DESC, Status DESC, DUEDATE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, CMPANYID, CMRECNUM, APLICFIL, Status, DUEDATE, RECURRINGTASK, RECURPATTRN, FREQUENCY, FRQRCINT, DAYSOFTHEWEEK, MONTHINTERVAL, MTHSLCTD, DAYOFMONTH, WHICHWEEKDAY, WeekDay, STRTDATE, ENDDATETYPE, TIMETREP, ENDINGDT, Priority, Completion_Date, COMPLETEDBY, CRUSRID, TASKTYPE, LinkTo, CmdID, CmdFormID, CmdDictID, FilePath, INET1, USRDAT01, USRDAT02, USRDAT03, USRTSK01, USRTSK02, USRTSK03, USRTSK04, USRTSK05, DEX_ROW_ID, TXTFIELD FROM .SY01403 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND Status BETWEEN @Status_RS AND @Status_RE AND DUEDATE BETWEEN @DUEDATE_RS AND @DUEDATE_RE ORDER BY USERID DESC, Status DESC, DUEDATE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01403L_2] TO [DYNGRP]
GO
