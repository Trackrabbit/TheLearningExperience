SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40500SS_1] (@UsersListGuid char(37)) AS  set nocount on SELECT TOP 1  UsersListGuid, DomainUserName, ADDisplayName, WF_Auto_Delegate_Tasks, Workflow_Select_Delegate, DEX_ROW_ID FROM .WF40500 WHERE UsersListGuid = @UsersListGuid ORDER BY UsersListGuid ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40500SS_1] TO [DYNGRP]
GO
