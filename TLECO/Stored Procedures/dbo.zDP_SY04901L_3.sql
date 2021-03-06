SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04901L_3] (@EmailMessageDesc_RS char(151), @EmailMessageID_RS char(25), @EmailMessageDesc_RE char(151), @EmailMessageID_RE char(25)) AS  set nocount on IF @EmailMessageDesc_RS IS NULL BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 ORDER BY EmailMessageDesc DESC, EmailMessageID DESC END ELSE IF @EmailMessageDesc_RS = @EmailMessageDesc_RE BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 WHERE EmailMessageDesc = @EmailMessageDesc_RS AND EmailMessageID BETWEEN @EmailMessageID_RS AND @EmailMessageID_RE ORDER BY EmailMessageDesc DESC, EmailMessageID DESC END ELSE BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 WHERE EmailMessageDesc BETWEEN @EmailMessageDesc_RS AND @EmailMessageDesc_RE AND EmailMessageID BETWEEN @EmailMessageID_RS AND @EmailMessageID_RE ORDER BY EmailMessageDesc DESC, EmailMessageID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04901L_3] TO [DYNGRP]
GO
