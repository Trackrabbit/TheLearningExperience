SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04901L_2] (@EmailDictionaryID_RS smallint, @EmailSeriesID_RS smallint, @EmailMessageID_RS char(25), @EmailDictionaryID_RE smallint, @EmailSeriesID_RE smallint, @EmailMessageID_RE char(25)) AS  set nocount on IF @EmailDictionaryID_RS IS NULL BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 ORDER BY EmailDictionaryID DESC, EmailSeriesID DESC, EmailMessageID DESC END ELSE IF @EmailDictionaryID_RS = @EmailDictionaryID_RE BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 WHERE EmailDictionaryID = @EmailDictionaryID_RS AND EmailSeriesID BETWEEN @EmailSeriesID_RS AND @EmailSeriesID_RE AND EmailMessageID BETWEEN @EmailMessageID_RS AND @EmailMessageID_RE ORDER BY EmailDictionaryID DESC, EmailSeriesID DESC, EmailMessageID DESC END ELSE BEGIN SELECT TOP 25  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 WHERE EmailDictionaryID BETWEEN @EmailDictionaryID_RS AND @EmailDictionaryID_RE AND EmailSeriesID BETWEEN @EmailSeriesID_RS AND @EmailSeriesID_RE AND EmailMessageID BETWEEN @EmailMessageID_RS AND @EmailMessageID_RE ORDER BY EmailDictionaryID DESC, EmailSeriesID DESC, EmailMessageID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04901L_2] TO [DYNGRP]
GO