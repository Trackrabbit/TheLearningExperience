SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE FUNCTION [dbo].[GetUserByObjectGuid] (@objectGuid [nvarchar] (37))
RETURNS [nvarchar] (85)
WITH EXECUTE AS CALLER
EXTERNAL NAME [Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine].[Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine.Directory.SqlClrFunctions].[GetUserByObjectGuid]
GO
GRANT EXECUTE ON  [dbo].[GetUserByObjectGuid] TO [DYNGRP]
GO
