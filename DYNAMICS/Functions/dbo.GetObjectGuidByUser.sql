SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE FUNCTION [dbo].[GetObjectGuidByUser] (@user [nvarchar] (85), @searchUsers [bit], @searchGroups [bit])
RETURNS [nvarchar] (37)
WITH EXECUTE AS CALLER
EXTERNAL NAME [Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine].[Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine.Directory.SqlClrFunctions].[GetObjectGuidByUser]
GO
GRANT EXECUTE ON  [dbo].[GetObjectGuidByUser] TO [DYNGRP]
GO
