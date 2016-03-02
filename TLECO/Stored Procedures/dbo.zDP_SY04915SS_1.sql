SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04915SS_1] (@DICTRYID smallint, @MODULE1 smallint, @DOCTYPE smallint, @DOCNUMBR char(21), @SEQNUMBR int, @USERID char(15), @DATE1 datetime, @TIME1 datetime) AS  set nocount on SELECT TOP 1  USERID, MODULE1, DOCTYPE, DOCNUMBR, DATE1, TIME1, EmailMessageFrom, EmailSubject, Master_ID, DICTRYID, SEQNUMBR, EmailFromAddress, EmailMessageID, DOCDATE, DEX_ROW_ID, EmailReplyToAddress, EmailToAddress, EmailCcAddress, EmailBccAddress, EmailBody FROM .SY04915 WHERE DICTRYID = @DICTRYID AND MODULE1 = @MODULE1 AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND SEQNUMBR = @SEQNUMBR AND USERID = @USERID AND DATE1 = @DATE1 AND TIME1 = @TIME1 ORDER BY DICTRYID ASC, MODULE1 ASC, DOCTYPE ASC, DOCNUMBR ASC, SEQNUMBR ASC, USERID ASC, DATE1 ASC, TIME1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04915SS_1] TO [DYNGRP]
GO
