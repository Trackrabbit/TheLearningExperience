SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE   PROCEDURE [dbo].[aagGetPostingSetupStatus] @O_fOkayToActivate TINYINT = 0 OUTPUT AS BEGIN  UPDATE SY02300 SET AUTPSTGL = 0 WHERE SERIES = 4 AND TRXSOURC = 'Computer Checks'   UPDATE SY02300 SET AUTPSTGL = 0 WHERE SERIES = 3 AND TRXSOURC = 'Direct Debit'    UPDATE SY02300 SET AUTPSTGL = 0 WHERE SERIES = 3 AND TRXSOURC = 'Direct Debit Refunds'   UPDATE SY02300 SET AUTPSTGL = 0 WHERE SERIES = 3 AND TRXSOURC = 'Writeoffs'   UPDATE FA49900 SET POSTINDETAIL=1    IF NOT EXISTS(SELECT TRXSOURC FROM SY02300 WHERE SERIES >1 AND SERIES < 6 AND PSTOGLHW = 1 AND Use_Account_Settings = 0)  BEGIN   SET @O_fOkayToActivate = 1  RETURN  END   RETURN END    
GO
GRANT EXECUTE ON  [dbo].[aagGetPostingSetupStatus] TO [DYNGRP]
GO