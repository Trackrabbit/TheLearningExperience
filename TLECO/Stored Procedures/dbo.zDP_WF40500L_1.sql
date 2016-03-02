SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40500L_1] (@UsersListGuid_RS char(37), @UsersListGuid_RE char(37)) AS  set nocount on IF @UsersListGuid_RS IS NULL BEGIN SELECT TOP 25  UsersListGuid, DomainUserName, ADDisplayName, WF_Auto_Delegate_Tasks, Workflow_Select_Delegate, DEX_ROW_ID FROM .WF40500 ORDER BY UsersListGuid DESC END ELSE IF @UsersListGuid_RS = @UsersListGuid_RE BEGIN SELECT TOP 25  UsersListGuid, DomainUserName, ADDisplayName, WF_Auto_Delegate_Tasks, Workflow_Select_Delegate, DEX_ROW_ID FROM .WF40500 WHERE UsersListGuid = @UsersListGuid_RS ORDER BY UsersListGuid DESC END ELSE BEGIN SELECT TOP 25  UsersListGuid, DomainUserName, ADDisplayName, WF_Auto_Delegate_Tasks, Workflow_Select_Delegate, DEX_ROW_ID FROM .WF40500 WHERE UsersListGuid BETWEEN @UsersListGuid_RS AND @UsersListGuid_RE ORDER BY UsersListGuid DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40500L_1] TO [DYNGRP]
GO
