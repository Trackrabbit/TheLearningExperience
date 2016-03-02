SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04911SS_1] (@Identity_Column int) AS  set nocount on SELECT TOP 1  Identity_Column, USERID, MODULE1, DOCTYPE, EmailMessageFrom, EmailSubject, AllowMultipleAtt, DICTRYID, EmailMessageID, Master_ID, DEX_ROW_ID, EmailToAddress, EmailCcAddress, EmailBccAddress, EmailReplyToAddress, EmailBody FROM .SY04911 WHERE Identity_Column = @Identity_Column ORDER BY Identity_Column ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04911SS_1] TO [DYNGRP]
GO
