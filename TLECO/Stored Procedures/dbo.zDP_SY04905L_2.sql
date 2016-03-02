SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04905L_2] (@EmailMessageID_RS char(25), @EmailDictionaryID_RS smallint, @EmailSeriesID_RS smallint, @MODULE1_RS smallint, @EmailCardID_RS char(25), @EmailDocumentID_RS smallint, @EmailMessageID_RE char(25), @EmailDictionaryID_RE smallint, @EmailSeriesID_RE smallint, @MODULE1_RE smallint, @EmailCardID_RE char(25), @EmailDocumentID_RE smallint) AS  set nocount on IF @EmailMessageID_RS IS NULL BEGIN SELECT TOP 25  EmailDictionaryID, EmailSeriesID, MODULE1, EmailCardID, EmailDocumentID, EmailDocumentEnabled, EmailMessageID, EmailDocumentFormat, DEX_ROW_ID FROM .SY04905 ORDER BY EmailMessageID DESC, EmailDictionaryID DESC, EmailSeriesID DESC, MODULE1 DESC, EmailCardID DESC, EmailDocumentID DESC END ELSE IF @EmailMessageID_RS = @EmailMessageID_RE BEGIN SELECT TOP 25  EmailDictionaryID, EmailSeriesID, MODULE1, EmailCardID, EmailDocumentID, EmailDocumentEnabled, EmailMessageID, EmailDocumentFormat, DEX_ROW_ID FROM .SY04905 WHERE EmailMessageID = @EmailMessageID_RS AND EmailDictionaryID BETWEEN @EmailDictionaryID_RS AND @EmailDictionaryID_RE AND EmailSeriesID BETWEEN @EmailSeriesID_RS AND @EmailSeriesID_RE AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND EmailCardID BETWEEN @EmailCardID_RS AND @EmailCardID_RE AND EmailDocumentID BETWEEN @EmailDocumentID_RS AND @EmailDocumentID_RE ORDER BY EmailMessageID DESC, EmailDictionaryID DESC, EmailSeriesID DESC, MODULE1 DESC, EmailCardID DESC, EmailDocumentID DESC END ELSE BEGIN SELECT TOP 25  EmailDictionaryID, EmailSeriesID, MODULE1, EmailCardID, EmailDocumentID, EmailDocumentEnabled, EmailMessageID, EmailDocumentFormat, DEX_ROW_ID FROM .SY04905 WHERE EmailMessageID BETWEEN @EmailMessageID_RS AND @EmailMessageID_RE AND EmailDictionaryID BETWEEN @EmailDictionaryID_RS AND @EmailDictionaryID_RE AND EmailSeriesID BETWEEN @EmailSeriesID_RS AND @EmailSeriesID_RE AND MODULE1 BETWEEN @MODULE1_RS AND @MODULE1_RE AND EmailCardID BETWEEN @EmailCardID_RS AND @EmailCardID_RE AND EmailDocumentID BETWEEN @EmailDocumentID_RS AND @EmailDocumentID_RE ORDER BY EmailMessageID DESC, EmailDictionaryID DESC, EmailSeriesID DESC, MODULE1 DESC, EmailCardID DESC, EmailDocumentID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04905L_2] TO [DYNGRP]
GO
