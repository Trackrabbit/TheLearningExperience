SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF00100SI] (@SETUPKEY smallint, @EnableWFNotifService tinyint, @Web_Service_Server char(81), @Web_Service_Server_Port int, @Web_Service_Server_SSL tinyint, @Enable_Workflow_Email tinyint, @EMail char(255), @DSPLNAME char(81), @SERVERID char(81), @Server_Port int, @IsSSL tinyint, @SMTP_Authentication smallint, @SMTP_User char(85), @SMTP_Password char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WF00100 (SETUPKEY, EnableWFNotifService, Web_Service_Server, Web_Service_Server_Port, Web_Service_Server_SSL, Enable_Workflow_Email, EMail, DSPLNAME, SERVERID, Server_Port, IsSSL, SMTP_Authentication, SMTP_User, SMTP_Password) VALUES ( @SETUPKEY, @EnableWFNotifService, @Web_Service_Server, @Web_Service_Server_Port, @Web_Service_Server_SSL, @Enable_Workflow_Email, @EMail, @DSPLNAME, @SERVERID, @Server_Port, @IsSSL, @SMTP_Authentication, @SMTP_User, @SMTP_Password) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF00100SI] TO [DYNGRP]
GO
