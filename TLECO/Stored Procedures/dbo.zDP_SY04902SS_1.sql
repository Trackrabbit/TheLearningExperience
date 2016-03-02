SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04902SS_1] (@EmailDictionaryID smallint, @EmailSeriesID smallint) AS  set nocount on SELECT TOP 1  EmailDictionaryID, EmailSeriesID, Email_Series_GetMSG_ID, EmailMessageFrom, EmailACF, EmailAllowChangeReplyTo, EmailAllowUpdateEntry, DEX_ROW_ID, EmailReplyToAddress FROM .SY04902 WHERE EmailDictionaryID = @EmailDictionaryID AND EmailSeriesID = @EmailSeriesID ORDER BY EmailDictionaryID ASC, EmailSeriesID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04902SS_1] TO [DYNGRP]
GO
