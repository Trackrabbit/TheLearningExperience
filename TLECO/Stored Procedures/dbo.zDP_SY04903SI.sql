SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04903SI] (@EmailDictionaryID smallint, @EmailSeriesID smallint, @MODULE1 smallint, @EmailDocumentID smallint, @EmailDocumentEnabled tinyint, @EmailMessageID char(25), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04903 (EmailDictionaryID, EmailSeriesID, MODULE1, EmailDocumentID, EmailDocumentEnabled, EmailMessageID) VALUES ( @EmailDictionaryID, @EmailSeriesID, @MODULE1, @EmailDocumentID, @EmailDocumentEnabled, @EmailMessageID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04903SI] TO [DYNGRP]
GO
