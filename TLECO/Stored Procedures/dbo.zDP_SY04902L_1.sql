SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04902L_1] (@EmailDictionaryID_RS smallint, @EmailSeriesID_RS smallint, @EmailDictionaryID_RE smallint, @EmailSeriesID_RE smallint) AS  set nocount on IF @EmailDictionaryID_RS IS NULL BEGIN SELECT TOP 25  EmailDictionaryID, EmailSeriesID, Email_Series_GetMSG_ID, EmailMessageFrom, EmailACF, EmailAllowChangeReplyTo, EmailAllowUpdateEntry, DEX_ROW_ID, EmailReplyToAddress FROM .SY04902 ORDER BY EmailDictionaryID DESC, EmailSeriesID DESC END ELSE IF @EmailDictionaryID_RS = @EmailDictionaryID_RE BEGIN SELECT TOP 25  EmailDictionaryID, EmailSeriesID, Email_Series_GetMSG_ID, EmailMessageFrom, EmailACF, EmailAllowChangeReplyTo, EmailAllowUpdateEntry, DEX_ROW_ID, EmailReplyToAddress FROM .SY04902 WHERE EmailDictionaryID = @EmailDictionaryID_RS AND EmailSeriesID BETWEEN @EmailSeriesID_RS AND @EmailSeriesID_RE ORDER BY EmailDictionaryID DESC, EmailSeriesID DESC END ELSE BEGIN SELECT TOP 25  EmailDictionaryID, EmailSeriesID, Email_Series_GetMSG_ID, EmailMessageFrom, EmailACF, EmailAllowChangeReplyTo, EmailAllowUpdateEntry, DEX_ROW_ID, EmailReplyToAddress FROM .SY04902 WHERE EmailDictionaryID BETWEEN @EmailDictionaryID_RS AND @EmailDictionaryID_RE AND EmailSeriesID BETWEEN @EmailSeriesID_RS AND @EmailSeriesID_RE ORDER BY EmailDictionaryID DESC, EmailSeriesID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04902L_1] TO [DYNGRP]
GO
