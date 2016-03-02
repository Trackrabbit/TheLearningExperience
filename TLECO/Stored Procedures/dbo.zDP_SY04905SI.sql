SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04905SI] (@EmailDictionaryID smallint, @EmailSeriesID smallint, @MODULE1 smallint, @EmailCardID char(25), @EmailDocumentID smallint, @EmailDocumentEnabled tinyint, @EmailMessageID char(25), @EmailDocumentFormat smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04905 (EmailDictionaryID, EmailSeriesID, MODULE1, EmailCardID, EmailDocumentID, EmailDocumentEnabled, EmailMessageID, EmailDocumentFormat) VALUES ( @EmailDictionaryID, @EmailSeriesID, @MODULE1, @EmailCardID, @EmailDocumentID, @EmailDocumentEnabled, @EmailMessageID, @EmailDocumentFormat) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04905SI] TO [DYNGRP]
GO
