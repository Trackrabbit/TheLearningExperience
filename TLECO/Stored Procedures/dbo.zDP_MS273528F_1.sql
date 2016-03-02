SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273528F_1] (@MSO_BookKey_Globals_RS char(1), @MSO_SaleKey_Globals_RS char(1), @MSO_SwipeKey_Globals_RS char(1), @MSO_BookKey_Globals_RE char(1), @MSO_SaleKey_Globals_RE char(1), @MSO_SwipeKey_Globals_RE char(1)) AS /* 12.00.0311.000 */ set nocount on IF @MSO_BookKey_Globals_RS IS NULL BEGIN SELECT TOP 25  MSO_BookKey_Globals, MSO_SaleKey_Globals, MSO_SwipeKey_Globals, MSO_COMMENT1, MSO_COMMENT2, MSO_COMMENT3, MSO_COMMENT4, MSO_COMMENT5, MSO_Disable_TRIGGERS, MSO_SendEMailAfterTracki, NDS_AuthMode, NDS_SMTPServer, NDS_UserName, NDS_Password_PABP, NDS_TRKEML_FileLoc, NDS_EmailReceipt, NDS_EmailReceiptLoc, NDS_DBUser, NDS_DBPassword_PABP, NDS_DBName, NDS_DBServer, MSO_ServerPort, NDS_DisableSaveCCACH, DisableSalesBatchWarning, DEX_ROW_ID FROM .MS273528 ORDER BY MSO_BookKey_Globals ASC, MSO_SaleKey_Globals ASC, MSO_SwipeKey_Globals ASC END ELSE IF @MSO_BookKey_Globals_RS = @MSO_BookKey_Globals_RE BEGIN SELECT TOP 25  MSO_BookKey_Globals, MSO_SaleKey_Globals, MSO_SwipeKey_Globals, MSO_COMMENT1, MSO_COMMENT2, MSO_COMMENT3, MSO_COMMENT4, MSO_COMMENT5, MSO_Disable_TRIGGERS, MSO_SendEMailAfterTracki, NDS_AuthMode, NDS_SMTPServer, NDS_UserName, NDS_Password_PABP, NDS_TRKEML_FileLoc, NDS_EmailReceipt, NDS_EmailReceiptLoc, NDS_DBUser, NDS_DBPassword_PABP, NDS_DBName, NDS_DBServer, MSO_ServerPort, NDS_DisableSaveCCACH, DisableSalesBatchWarning, DEX_ROW_ID FROM .MS273528 WHERE MSO_BookKey_Globals = @MSO_BookKey_Globals_RS AND MSO_SaleKey_Globals BETWEEN @MSO_SaleKey_Globals_RS AND @MSO_SaleKey_Globals_RE AND MSO_SwipeKey_Globals BETWEEN @MSO_SwipeKey_Globals_RS AND @MSO_SwipeKey_Globals_RE ORDER BY MSO_BookKey_Globals ASC, MSO_SaleKey_Globals ASC, MSO_SwipeKey_Globals ASC END ELSE BEGIN SELECT TOP 25  MSO_BookKey_Globals, MSO_SaleKey_Globals, MSO_SwipeKey_Globals, MSO_COMMENT1, MSO_COMMENT2, MSO_COMMENT3, MSO_COMMENT4, MSO_COMMENT5, MSO_Disable_TRIGGERS, MSO_SendEMailAfterTracki, NDS_AuthMode, NDS_SMTPServer, NDS_UserName, NDS_Password_PABP, NDS_TRKEML_FileLoc, NDS_EmailReceipt, NDS_EmailReceiptLoc, NDS_DBUser, NDS_DBPassword_PABP, NDS_DBName, NDS_DBServer, MSO_ServerPort, NDS_DisableSaveCCACH, DisableSalesBatchWarning, DEX_ROW_ID FROM .MS273528 WHERE MSO_BookKey_Globals BETWEEN @MSO_BookKey_Globals_RS AND @MSO_BookKey_Globals_RE AND MSO_SaleKey_Globals BETWEEN @MSO_SaleKey_Globals_RS AND @MSO_SaleKey_Globals_RE AND MSO_SwipeKey_Globals BETWEEN @MSO_SwipeKey_Globals_RS AND @MSO_SwipeKey_Globals_RE ORDER BY MSO_BookKey_Globals ASC, MSO_SaleKey_Globals ASC, MSO_SwipeKey_Globals ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273528F_1] TO [DYNGRP]
GO
