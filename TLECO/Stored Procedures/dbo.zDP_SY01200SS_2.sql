SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY01200SS_2] (@Messenger_Address char(201), @Master_Type char(3), @Master_ID char(31), @ADRSCODE char(15)) AS  set nocount on SELECT TOP 1  Master_Type, Master_ID, ADRSCODE, INET1, INET2, INET3, INET4, INET5, INET6, INET7, INET8, Messenger_Address, DEX_ROW_TS, DEX_ROW_ID, INETINFO, EmailToAddress, EmailCcAddress, EmailBccAddress FROM .SY01200 WHERE Messenger_Address = @Messenger_Address AND Master_Type = @Master_Type AND Master_ID = @Master_ID AND ADRSCODE = @ADRSCODE ORDER BY Messenger_Address ASC, Master_Type ASC, Master_ID ASC, ADRSCODE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01200SS_2] TO [DYNGRP]
GO
