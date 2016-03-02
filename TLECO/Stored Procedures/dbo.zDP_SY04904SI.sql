SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04904SI] (@EmailDictionaryID smallint, @EmailSeriesID smallint, @EmailCardID char(25), @EmailAllowEmbedding tinyint, @EmailAllowAttachments tinyint, @AllowMultipleAtt tinyint, @EmailSetFileSize tinyint, @EmailMaxFileSize numeric(19,5), @EmailAddressOption smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04904 (EmailDictionaryID, EmailSeriesID, EmailCardID, EmailAllowEmbedding, EmailAllowAttachments, AllowMultipleAtt, EmailSetFileSize, EmailMaxFileSize, EmailAddressOption) VALUES ( @EmailDictionaryID, @EmailSeriesID, @EmailCardID, @EmailAllowEmbedding, @EmailAllowAttachments, @AllowMultipleAtt, @EmailSetFileSize, @EmailMaxFileSize, @EmailAddressOption) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04904SI] TO [DYNGRP]
GO
