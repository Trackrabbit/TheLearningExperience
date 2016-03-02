SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04905SS_1] (@EmailDictionaryID smallint, @EmailSeriesID smallint, @MODULE1 smallint, @EmailCardID char(25), @EmailDocumentID smallint) AS  set nocount on SELECT TOP 1  EmailDictionaryID, EmailSeriesID, MODULE1, EmailCardID, EmailDocumentID, EmailDocumentEnabled, EmailMessageID, EmailDocumentFormat, DEX_ROW_ID FROM .SY04905 WHERE EmailDictionaryID = @EmailDictionaryID AND EmailSeriesID = @EmailSeriesID AND MODULE1 = @MODULE1 AND EmailCardID = @EmailCardID AND EmailDocumentID = @EmailDocumentID ORDER BY EmailDictionaryID ASC, EmailSeriesID ASC, MODULE1 ASC, EmailCardID ASC, EmailDocumentID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04905SS_1] TO [DYNGRP]
GO
