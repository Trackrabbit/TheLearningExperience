SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF00100SS_1] (@SETUPKEY smallint) AS  set nocount on SELECT TOP 1  SETUPKEY, EnableWFNotifService, Web_Service_Server, Web_Service_Server_Port, Web_Service_Server_SSL, Enable_Workflow_Email, EMail, DSPLNAME, SERVERID, Server_Port, IsSSL, SMTP_Authentication, SMTP_User, SMTP_Password, DEX_ROW_ID FROM .WF00100 WHERE SETUPKEY = @SETUPKEY ORDER BY SETUPKEY ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF00100SS_1] TO [DYNGRP]
GO
