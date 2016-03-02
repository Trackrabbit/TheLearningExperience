SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[GetAssignedUsers] (@workflowUser [nvarchar] (37), @usersListGuid [nvarchar] (37), @workflowTypeName [nvarchar] (51), @workflowName [nvarchar] (51), @workflowVersion [int], @workflowInstance [nvarchar] (37), @workflowStepName [nvarchar] (51), @workflowStepInstance [nvarchar] (37), @server [nvarchar] (128), @companyDb [nvarchar] (6), @systemDb [nvarchar] (11))
WITH EXECUTE AS CALLER
AS EXTERNAL NAME [Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine].[Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine.Models.WorkflowUsersModel].[GetAssignedUsers]
GO
GRANT EXECUTE ON  [dbo].[GetAssignedUsers] TO [DYNGRP]
GO
