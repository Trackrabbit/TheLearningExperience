SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROCEDURE [dbo].[SendWorkflowAssignmentEmail] (@workflowInstance [nvarchar] (37), @worfkflowStepInstance [nvarchar] (37), @mailMessageID [nvarchar] (25), @workflowVersion [int], @assignedTaskUser [nvarchar] (85), @actionDueDate [datetime], @actionDueTime [datetime], @docAttachBusObjKey [nvarchar] (200), @documentDrillDown [nvarchar] (255), @documentID [nvarchar] (50), @originatorComments [nvarchar] (500), @originatorCommentsDate [datetime], @originatorCommentsTime [datetime], @workflowManagers [nvarchar] (37), @workflowName [nvarchar] (51), @workflowTypeName [nvarchar] (51), @workflowOriginator [nvarchar] (85), @workflowStatus [int], @workflowStepName [nvarchar] (51), @server [nvarchar] (128), @companyDb [nvarchar] (6), @systemDb [nvarchar] (11), @canApprove [bit], @canTaskComplete [bit], @canReject [bit], @canDelegate [bit], @canRecall [bit], @tempFilepath [nvarchar] (300), @Error [int] OUTPUT)
WITH EXECUTE AS CALLER
AS EXTERNAL NAME [Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine].[Microsoft.Dynamics.GP.WorkflowGP.WorkflowEngine.Email.EmailEngine].[SendWorkflowAssignmentEmail]
GO
GRANT EXECUTE ON  [dbo].[SendWorkflowAssignmentEmail] TO [DYNGRP]
GO
