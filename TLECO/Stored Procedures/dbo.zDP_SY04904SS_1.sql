SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04904SS_1] (@EmailDictionaryID smallint, @EmailSeriesID smallint, @EmailCardID char(25)) AS  set nocount on SELECT TOP 1  EmailDictionaryID, EmailSeriesID, EmailCardID, EmailAllowEmbedding, EmailAllowAttachments, AllowMultipleAtt, EmailSetFileSize, EmailMaxFileSize, EmailAddressOption, DEX_ROW_ID FROM .SY04904 WHERE EmailDictionaryID = @EmailDictionaryID AND EmailSeriesID = @EmailSeriesID AND EmailCardID = @EmailCardID ORDER BY EmailDictionaryID ASC, EmailSeriesID ASC, EmailCardID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04904SS_1] TO [DYNGRP]
GO
