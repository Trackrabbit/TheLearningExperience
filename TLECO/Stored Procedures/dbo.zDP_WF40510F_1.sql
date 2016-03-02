SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40510F_1] (@UsersListGuid_RS char(37), @Workflow_Type_Name_RS char(51), @UsersListGuid_RE char(37), @Workflow_Type_Name_RE char(51)) AS  set nocount on IF @UsersListGuid_RS IS NULL BEGIN SELECT TOP 25  UsersListGuid, Workflow_Type_Name, DomainUserName, ADDisplayName, STRTDATE, ENDDATE, DEX_ROW_ID FROM .WF40510 ORDER BY UsersListGuid ASC, Workflow_Type_Name ASC END ELSE IF @UsersListGuid_RS = @UsersListGuid_RE BEGIN SELECT TOP 25  UsersListGuid, Workflow_Type_Name, DomainUserName, ADDisplayName, STRTDATE, ENDDATE, DEX_ROW_ID FROM .WF40510 WHERE UsersListGuid = @UsersListGuid_RS AND Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE ORDER BY UsersListGuid ASC, Workflow_Type_Name ASC END ELSE BEGIN SELECT TOP 25  UsersListGuid, Workflow_Type_Name, DomainUserName, ADDisplayName, STRTDATE, ENDDATE, DEX_ROW_ID FROM .WF40510 WHERE UsersListGuid BETWEEN @UsersListGuid_RS AND @UsersListGuid_RE AND Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE ORDER BY UsersListGuid ASC, Workflow_Type_Name ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40510F_1] TO [DYNGRP]
GO
