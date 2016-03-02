SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF40500SI] (@UsersListGuid char(37), @DomainUserName char(255), @ADDisplayName char(255), @WF_Auto_Delegate_Tasks tinyint, @Workflow_Select_Delegate smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WF40500 (UsersListGuid, DomainUserName, ADDisplayName, WF_Auto_Delegate_Tasks, Workflow_Select_Delegate) VALUES ( @UsersListGuid, @DomainUserName, @ADDisplayName, @WF_Auto_Delegate_Tasks, @Workflow_Select_Delegate) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF40500SI] TO [DYNGRP]
GO
