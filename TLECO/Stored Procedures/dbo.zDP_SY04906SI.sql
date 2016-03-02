SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04906SI] (@EmailDictionaryID smallint, @EmailSeriesID smallint, @MODULE1 smallint, @EmailCardID char(25), @EmailDocumentID smallint, @ADRSCODE char(15), @EmailCardAddress char(151), @EmailRecipientTypeTo tinyint, @EmailRecipientTypeCc tinyint, @EmailRecipientTypeBcc tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SY04906 (EmailDictionaryID, EmailSeriesID, MODULE1, EmailCardID, EmailDocumentID, ADRSCODE, EmailCardAddress, EmailRecipientTypeTo, EmailRecipientTypeCc, EmailRecipientTypeBcc) VALUES ( @EmailDictionaryID, @EmailSeriesID, @MODULE1, @EmailCardID, @EmailDocumentID, @ADRSCODE, @EmailCardAddress, @EmailRecipientTypeTo, @EmailRecipientTypeCc, @EmailRecipientTypeBcc) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04906SI] TO [DYNGRP]
GO
