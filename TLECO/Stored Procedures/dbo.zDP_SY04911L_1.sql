SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04911L_1] (@Identity_Column_RS int, @Identity_Column_RE int) AS  set nocount on IF @Identity_Column_RS IS NULL BEGIN SELECT TOP 25  Identity_Column, USERID, MODULE1, DOCTYPE, EmailMessageFrom, EmailSubject, AllowMultipleAtt, DICTRYID, EmailMessageID, Master_ID, DEX_ROW_ID, EmailToAddress, EmailCcAddress, EmailBccAddress, EmailReplyToAddress, EmailBody FROM .SY04911 ORDER BY Identity_Column DESC END ELSE IF @Identity_Column_RS = @Identity_Column_RE BEGIN SELECT TOP 25  Identity_Column, USERID, MODULE1, DOCTYPE, EmailMessageFrom, EmailSubject, AllowMultipleAtt, DICTRYID, EmailMessageID, Master_ID, DEX_ROW_ID, EmailToAddress, EmailCcAddress, EmailBccAddress, EmailReplyToAddress, EmailBody FROM .SY04911 WHERE Identity_Column = @Identity_Column_RS ORDER BY Identity_Column DESC END ELSE BEGIN SELECT TOP 25  Identity_Column, USERID, MODULE1, DOCTYPE, EmailMessageFrom, EmailSubject, AllowMultipleAtt, DICTRYID, EmailMessageID, Master_ID, DEX_ROW_ID, EmailToAddress, EmailCcAddress, EmailBccAddress, EmailReplyToAddress, EmailBody FROM .SY04911 WHERE Identity_Column BETWEEN @Identity_Column_RS AND @Identity_Column_RE ORDER BY Identity_Column DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04911L_1] TO [DYNGRP]
GO
