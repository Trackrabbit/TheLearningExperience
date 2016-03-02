SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04901SS_3] (@EmailMessageDesc char(151), @EmailMessageID char(25)) AS  set nocount on SELECT TOP 1  EmailMessageID, EmailDictionaryID, EmailSeriesID, EmailDocumentID, Workflow_Type_Name, EmailMessageDesc, EmailMessageSubject, EmailMessageFrom, Email_Message_Type, DEX_ROW_ID, EmailReplyToAddress, EmailMessageBody FROM .SY04901 WHERE EmailMessageDesc = @EmailMessageDesc AND EmailMessageID = @EmailMessageID ORDER BY EmailMessageDesc ASC, EmailMessageID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04901SS_3] TO [DYNGRP]
GO
