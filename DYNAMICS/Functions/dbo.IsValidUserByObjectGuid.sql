SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE FUNCTION [dbo].[IsValidUserByObjectGuid] (@objectGuid [nvarchar] (37))
RETURNS [bit]
WITH EXECUTE AS CALLER
EXTERNAL NAME [Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine].[Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine.Directory.SqlClrFunctions].[IsValidUserByObjectGuid]
GO
GRANT EXECUTE ON  [dbo].[IsValidUserByObjectGuid] TO [DYNGRP]
GO
