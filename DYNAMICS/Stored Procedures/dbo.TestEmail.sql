SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[TestEmail] (@fromEmail [nvarchar] (255), @server [nvarchar] (80), @port [int], @ssl [int], @authentication [int], @user [nvarchar] (85), @passwrod [nvarchar] (255), @toMail [nvarchar] (255), @subject [nvarchar] (255), @body [nvarchar] (255))
WITH EXECUTE AS CALLER
AS EXTERNAL NAME [Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine].[Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine.Email.EmailEngine].[TestEmail]
GO
GRANT EXECUTE ON  [dbo].[TestEmail] TO [DYNGRP]
GO
