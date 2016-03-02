SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00106SS_1] (@CUSTNMBR char(15), @Email_Type smallint, @Email_Recipient char(81)) AS  set nocount on SELECT TOP 1  CUSTNMBR, Email_Type, Email_Recipient, DEX_ROW_ID FROM .RM00106 WHERE CUSTNMBR = @CUSTNMBR AND Email_Type = @Email_Type AND Email_Recipient = @Email_Recipient ORDER BY CUSTNMBR ASC, Email_Type ASC, Email_Recipient ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00106SS_1] TO [DYNGRP]
GO
