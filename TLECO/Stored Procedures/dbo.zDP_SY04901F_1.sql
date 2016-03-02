SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04901F_1] (@EmailMessageID_RS char(25), @EmailMessageID_RE char(25)) AS  set nocount on IF @EmailMessageID_RS IS NULL BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 ORDER BY EmailMessageID ASC END ELSE IF @EmailMessageID_RS = @EmailMessageID_RE BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 WHERE EmailMessageID = @EmailMessageID_RS ORDER BY EmailMessageID ASC END ELSE BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 WHERE EmailMessageID BETWEEN @EmailMessageID_RS AND @EmailMessageID_RE ORDER BY EmailMessageID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04901F_1] TO [DYNGRP]
GO
