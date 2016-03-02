SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40510SS_1] (@UsersListGuid char(37), @Workflow_Type_Name char(51)) AS  set nocount on SELECT TOP 1  UsersListGuid, Workflow_Type_Name, DomainUserName, ADDisplayName, STRTDATE, ENDDATE, DEX_ROW_ID FROM .WF40510 WHERE UsersListGuid = @UsersListGuid AND Workflow_Type_Name = @Workflow_Type_Name ORDER BY UsersListGuid ASC, Workflow_Type_Name ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40510SS_1] TO [DYNGRP]
GO
