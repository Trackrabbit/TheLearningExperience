SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE FUNCTION [dbo].[IsValidUserByUser] (@user [nvarchar] (85), @searchUsers [bit], @searchGroups [bit])
RETURNS [bit]
WITH EXECUTE AS CALLER
EXTERNAL NAME [Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine].[Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine.Directory.SqlClrFunctions].[IsValidUserByUser]
GO
GRANT EXECUTE ON  [dbo].[IsValidUserByUser] TO [DYNGRP]
GO
