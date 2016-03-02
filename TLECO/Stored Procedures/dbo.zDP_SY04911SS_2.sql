SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY04911SS_2] (@DICTRYID smallint, @MODULE1 smallint, @USERID char(15), @Identity_Column int) AS  set nocount on SELECT TOP 1  Identity_Column, USERID, MODULE1, DOCTYPE, EmailMessageFrom, EmailSubject, AllowMultipleAtt, DICTRYID, EmailMessageID, Master_ID, DEX_ROW_ID, EmailToAddress, EmailCcAddress, EmailBccAddress, EmailReplyToAddress, EmailBody FROM .SY04911 WHERE DICTRYID = @DICTRYID AND MODULE1 = @MODULE1 AND USERID = @USERID AND Identity_Column = @Identity_Column ORDER BY DICTRYID ASC, MODULE1 ASC, USERID ASC, Identity_Column ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY04911SS_2] TO [DYNGRP]
GO
