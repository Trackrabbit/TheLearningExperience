SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04906SS_1] (@EmailDictionaryID smallint, @EmailSeriesID smallint, @MODULE1 smallint, @EmailCardID char(25), @EmailDocumentID smallint, @EmailCardAddress char(151)) AS  set nocount on SELECT TOP 1  EmailDictionaryID, EmailSeriesID, MODULE1, EmailCardID, EmailDocumentID, ADRSCODE, EmailCardAddress, EmailRecipientTypeTo, EmailRecipientTypeCc, EmailRecipientTypeBcc, DEX_ROW_ID FROM .SY04906 WHERE EmailDictionaryID = @EmailDictionaryID AND EmailSeriesID = @EmailSeriesID AND MODULE1 = @MODULE1 AND EmailCardID = @EmailCardID AND EmailDocumentID = @EmailDocumentID AND EmailCardAddress = @EmailCardAddress ORDER BY EmailDictionaryID ASC, EmailSeriesID ASC, MODULE1 ASC, EmailCardID ASC, EmailDocumentID ASC, EmailCardAddress ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04906SS_1] TO [DYNGRP]
GO
