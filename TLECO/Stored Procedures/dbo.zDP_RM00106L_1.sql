SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00106L_1] (@CUSTNMBR_RS char(15), @Email_Type_RS smallint, @Email_Recipient_RS char(81), @CUSTNMBR_RE char(15), @Email_Type_RE smallint, @Email_Recipient_RE char(81)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, Email_Type, Email_Recipient, DEX_ROW_ID FROM .RM00106 ORDER BY CUSTNMBR DESC, Email_Type DESC, Email_Recipient DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, Email_Type, Email_Recipient, DEX_ROW_ID FROM .RM00106 WHERE CUSTNMBR = @CUSTNMBR_RS AND Email_Type BETWEEN @Email_Type_RS AND @Email_Type_RE AND Email_Recipient BETWEEN @Email_Recipient_RS AND @Email_Recipient_RE ORDER BY CUSTNMBR DESC, Email_Type DESC, Email_Recipient DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, Email_Type, Email_Recipient, DEX_ROW_ID FROM .RM00106 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND Email_Type BETWEEN @Email_Type_RS AND @Email_Type_RE AND Email_Recipient BETWEEN @Email_Recipient_RS AND @Email_Recipient_RE ORDER BY CUSTNMBR DESC, Email_Type DESC, Email_Recipient DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00106L_1] TO [DYNGRP]
GO
