SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04915L_1] (@DICTRYID_RS smallint, @MODULE1_RS smallint, @DOCTYPE_RS smallint, @DOCNUMBR_RS char(21), @SEQNUMBR_RS int, @USERID_RS char(15), @DATE1_RS datetime, @TIME1_RS datetime, @DICTRYID_RE smallint, @MODULE1_RE smallint, @DOCTYPE_RE smallint, @DOCNUMBR_RE char(21), @SEQNUMBR_RE int, @USERID_RE char(15), @DATE1_RE datetime, @TIME1_RE datetime) AS  set nocount on IF @DICTRYID_RS IS NULL BEGIN SELECT TOP 25  USERID, MODULE1, DOCTYPE, DOCNUMBR, DATE1, TIME1, EmailMessageFrom, EmailSubject, Master_ID, DICTRYID, SEQNUMBR, EmailFromAddress, EmailMessageID, DOCDATE, DEX_ROW_ID, EmailReplyToAddress, EmailToAddress, EmailCcAddress, EmailBccAddress, EmailBody FROM .SY04915 ORDER BY DICTRYID DESC, MODULE1 DESC, DOCTYPE DESC, DOCNUMBR DESC, SEQNUMBR DESC, USERID DESC, DATE1 DESC, TIME1 DESC END ELSE IF @DICTRYID_RS = @DICTRYID_RE BEGIN SELECT TOP 25  USERID, MODULE1, DOCTYPE, DOCNUMBR, DATE1, TIME1, EmailMessageFrom, EmailSubject, Master_ID, DICTRYID, SEQNUMBR, EmailFromAddress, EmailMessageID, DOCDATE, DEX_ROW_ID, EmailReplyToAddress, EmailToAddress, EmailCcAddress, EmailBccAddress, EmailBody FROM .SY04915 WHERE DICTRYID = @DICTRYID_RS AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE ORDER BY DICTRYID DESC, MODULE1 DESC, DOCTYPE DESC, DOCNUMBR DESC, SEQNUMBR DESC, USERID DESC, DATE1 DESC, TIME1 DESC END ELSE BEGIN SELECT TOP 25  USERID, MODULE1, DOCTYPE, DOCNUMBR, DATE1, TIME1, EmailMessageFrom, EmailSubject, Master_ID, DICTRYID, SEQNUMBR, EmailFromAddress, EmailMessageID, DOCDATE, DEX_ROW_ID, EmailReplyToAddress, EmailToAddress, EmailCcAddress, EmailBccAddress, EmailBody FROM .SY04915 WHERE DICTRYID BETWEEN @DICTRYID_RS AND @DICTRYID_RE AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND DOCTYPE BETWEEN @DOCTYPE_RS AND @DOCTYPE_RE AND DOCNUMBR BETWEEN @DOCNUMBR_RS AND @DOCNUMBR_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE AND TIME1 BETWEEN @TIME1_RS AND @TIME1_RE ORDER BY DICTRYID DESC, MODULE1 DESC, DOCTYPE DESC, DOCNUMBR DESC, SEQNUMBR DESC, USERID DESC, DATE1 DESC, TIME1 DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04915L_1] TO [DYNGRP]
GO
