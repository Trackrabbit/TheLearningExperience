SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04906SS_2] (@EmailDictionaryID smallint, @EmailSeriesID smallint, @EmailCardID char(25), @ADRSCODE char(15), @EmailCardAddress char(151)) AS  set nocount on SELECT TOP 1  EmailDictionaryID, EmailSeriesID, MODULE1, EmailCardID, EmailDocumentID, ADRSCODE, EmailCardAddress, EmailRecipientTypeTo, EmailRecipientTypeCc, EmailRecipientTypeBcc, DEX_ROW_ID FROM .SY04906 WHERE EmailDictionaryID = @EmailDictionaryID AND EmailSeriesID = @EmailSeriesID AND EmailCardID = @EmailCardID AND ADRSCODE = @ADRSCODE AND EmailCardAddress = @EmailCardAddress ORDER BY EmailDictionaryID ASC, EmailSeriesID ASC, EmailCardID ASC, ADRSCODE ASC, EmailCardAddress ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04906SS_2] TO [DYNGRP]
GO
