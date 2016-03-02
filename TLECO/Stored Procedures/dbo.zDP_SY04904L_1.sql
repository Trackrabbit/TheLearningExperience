SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04904L_1] (@EmailDictionaryID_RS smallint, @EmailSeriesID_RS smallint, @EmailCardID_RS char(25), @EmailDictionaryID_RE smallint, @EmailSeriesID_RE smallint, @EmailCardID_RE char(25)) AS  set nocount on IF @EmailDictionaryID_RS IS NULL BEGIN SELECT TOP 25  EmailDictionaryID, EmailSeriesID, EmailCardID, EmailAllowEmbedding, EmailAllowAttachments, AllowMultipleAtt, EmailSetFileSize, EmailMaxFileSize, EmailAddressOption, DEX_ROW_ID FROM .SY04904 ORDER BY EmailDictionaryID DESC, EmailSeriesID DESC, EmailCardID DESC END ELSE IF @EmailDictionaryID_RS = @EmailDictionaryID_RE BEGIN SELECT TOP 25  EmailDictionaryID, EmailSeriesID, EmailCardID, EmailAllowEmbedding, EmailAllowAttachments, AllowMultipleAtt, EmailSetFileSize, EmailMaxFileSize, EmailAddressOption, DEX_ROW_ID FROM .SY04904 WHERE EmailDictionaryID = @EmailDictionaryID_RS AND EmailSeriesID BETWEEN @EmailSeriesID_RS AND @EmailSeriesID_RE AND EmailCardID BETWEEN @EmailCardID_RS AND @EmailCardID_RE ORDER BY EmailDictionaryID DESC, EmailSeriesID DESC, EmailCardID DESC END ELSE BEGIN SELECT TOP 25  EmailDictionaryID, EmailSeriesID, EmailCardID, EmailAllowEmbedding, EmailAllowAttachments, AllowMultipleAtt, EmailSetFileSize, EmailMaxFileSize, EmailAddressOption, DEX_ROW_ID FROM .SY04904 WHERE EmailDictionaryID BETWEEN @EmailDictionaryID_RS AND @EmailDictionaryID_RE AND EmailSeriesID BETWEEN @EmailSeriesID_RS AND @EmailSeriesID_RE AND EmailCardID BETWEEN @EmailCardID_RS AND @EmailCardID_RE ORDER BY EmailDictionaryID DESC, EmailSeriesID DESC, EmailCardID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04904L_1] TO [DYNGRP]
GO