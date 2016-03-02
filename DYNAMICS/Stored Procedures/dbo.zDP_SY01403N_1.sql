SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01403N_1] (@BS int, @CMRECNUM numeric(19,5), @CMRECNUM_RS numeric(19,5), @CMRECNUM_RE numeric(19,5)) AS  set nocount on IF @CMRECNUM_RS IS NULL BEGIN SELECT TOP 25  USERID, CMPANYID, CMRECNUM, APLICFIL, Status, DUEDATE, RECURRINGTASK, RECURPATTRN, FREQUENCY, FRQRCINT, DAYSOFTHEWEEK, MONTHINTERVAL, MTHSLCTD, DAYOFMONTH, WHICHWEEKDAY, WeekDay, STRTDATE, ENDDATETYPE, TIMETREP, ENDINGDT, Priority, Completion_Date, COMPLETEDBY, CRUSRID, TASKTYPE, LinkTo, CmdID, CmdFormID, CmdDictID, FilePath, INET1, USRDAT01, USRDAT02, USRDAT03, USRTSK01, USRTSK02, USRTSK03, USRTSK04, USRTSK05, DEX_ROW_ID, TXTFIELD FROM .SY01403 WHERE ( CMRECNUM > @CMRECNUM ) ORDER BY CMRECNUM ASC END ELSE IF @CMRECNUM_RS = @CMRECNUM_RE BEGIN SELECT TOP 25  USERID, CMPANYID, CMRECNUM, APLICFIL, Status, DUEDATE, RECURRINGTASK, RECURPATTRN, FREQUENCY, FRQRCINT, DAYSOFTHEWEEK, MONTHINTERVAL, MTHSLCTD, DAYOFMONTH, WHICHWEEKDAY, WeekDay, STRTDATE, ENDDATETYPE, TIMETREP, ENDINGDT, Priority, Completion_Date, COMPLETEDBY, CRUSRID, TASKTYPE, LinkTo, CmdID, CmdFormID, CmdDictID, FilePath, INET1, USRDAT01, USRDAT02, USRDAT03, USRTSK01, USRTSK02, USRTSK03, USRTSK04, USRTSK05, DEX_ROW_ID, TXTFIELD FROM .SY01403 WHERE CMRECNUM = @CMRECNUM_RS AND ( CMRECNUM > @CMRECNUM ) ORDER BY CMRECNUM ASC END ELSE BEGIN SELECT TOP 25  USERID, CMPANYID, CMRECNUM, APLICFIL, Status, DUEDATE, RECURRINGTASK, RECURPATTRN, FREQUENCY, FRQRCINT, DAYSOFTHEWEEK, MONTHINTERVAL, MTHSLCTD, DAYOFMONTH, WHICHWEEKDAY, WeekDay, STRTDATE, ENDDATETYPE, TIMETREP, ENDINGDT, Priority, Completion_Date, COMPLETEDBY, CRUSRID, TASKTYPE, LinkTo, CmdID, CmdFormID, CmdDictID, FilePath, INET1, USRDAT01, USRDAT02, USRDAT03, USRTSK01, USRTSK02, USRTSK03, USRTSK04, USRTSK05, DEX_ROW_ID, TXTFIELD FROM .SY01403 WHERE CMRECNUM BETWEEN @CMRECNUM_RS AND @CMRECNUM_RE AND ( CMRECNUM > @CMRECNUM ) ORDER BY CMRECNUM ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01403N_1] TO [DYNGRP]
GO