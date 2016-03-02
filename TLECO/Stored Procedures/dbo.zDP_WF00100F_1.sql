SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF00100F_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS  set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, EnableWFNotifService, Web_Service_Server, Web_Service_Server_Port, Web_Service_Server_SSL, Enable_Workflow_Email, EMail, DSPLNAME, SERVERID, Server_Port, IsSSL, SMTP_Authentication, SMTP_User, SMTP_Password, DEX_ROW_ID FROM .WF00100 ORDER BY SETUPKEY ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, EnableWFNotifService, Web_Service_Server, Web_Service_Server_Port, Web_Service_Server_SSL, Enable_Workflow_Email, EMail, DSPLNAME, SERVERID, Server_Port, IsSSL, SMTP_Authentication, SMTP_User, SMTP_Password, DEX_ROW_ID FROM .WF00100 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY ASC END ELSE BEGIN SELECT TOP 25  SETUPKEY, EnableWFNotifService, Web_Service_Server, Web_Service_Server_Port, Web_Service_Server_SSL, Enable_Workflow_Email, EMail, DSPLNAME, SERVERID, Server_Port, IsSSL, SMTP_Authentication, SMTP_User, SMTP_Password, DEX_ROW_ID FROM .WF00100 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF00100F_1] TO [DYNGRP]
GO
