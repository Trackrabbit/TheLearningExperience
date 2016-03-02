SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40510SI] (@UsersListGuid char(37), @Workflow_Type_Name char(51), @DomainUserName char(255), @ADDisplayName char(255), @STRTDATE datetime, @ENDDATE datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WF40510 (UsersListGuid, Workflow_Type_Name, DomainUserName, ADDisplayName, STRTDATE, ENDDATE) VALUES ( @UsersListGuid, @Workflow_Type_Name, @DomainUserName, @ADDisplayName, @STRTDATE, @ENDDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40510SI] TO [DYNGRP]
GO
