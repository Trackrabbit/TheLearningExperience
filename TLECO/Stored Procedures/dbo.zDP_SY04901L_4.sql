SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04901L_4] (@EmailDocumentID_RS smallint, @EmailMessageID_RS char(25), @EmailDocumentID_RE smallint, @EmailMessageID_RE char(25)) AS  set nocount on IF @EmailDocumentID_RS IS NULL BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 ORDER BY EmailDocumentID DESC, EmailMessageID DESC END ELSE IF @EmailDocumentID_RS = @EmailDocumentID_RE BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 WHERE EmailDocumentID = @EmailDocumentID_RS AND EmailMessageID BETWEEN @EmailMessageID_RS AND @EmailMessageID_RE ORDER BY EmailDocumentID DESC, EmailMessageID DESC END ELSE BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 WHERE EmailDocumentID BETWEEN @EmailDocumentID_RS AND @EmailDocumentID_RE AND EmailMessageID BETWEEN @EmailMessageID_RS AND @EmailMessageID_RE ORDER BY EmailDocumentID DESC, EmailMessageID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04901L_4] TO [DYNGRP]
GO
