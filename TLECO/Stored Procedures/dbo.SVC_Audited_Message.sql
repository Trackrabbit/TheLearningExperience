SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_Audited_Message](  @Call_number char(11),  @Record_type smallint,  @To varchar(100),  @Message varchar(255),  @Audit_message char(31)  ) AS declare @L_status char(3)  select @L_status = SRVSTAT  from SVC00200  where CALLNBR = @Call_number and SRVRECTYPE = @Record_type  exec SVC_SendMail @To, 'Escalation', @Message  exec SVC_Create_Service_Audit @Call_number,  @Record_type,  @L_status,  'Escalation Mgr',  @Audit_message    
GO
GRANT EXECUTE ON  [dbo].[SVC_Audited_Message] TO [DYNGRP]
GO
