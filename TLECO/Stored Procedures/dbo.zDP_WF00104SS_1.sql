SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF00104SS_1] (@Workflow_Type_Name char(51), @USERID char(15)) AS  set nocount on SELECT TOP 1  Workflow_Type_Name, USERID, DEX_ROW_TS, DEX_ROW_ID FROM .WF00104 WHERE Workflow_Type_Name = @Workflow_Type_Name AND USERID = @USERID ORDER BY Workflow_Type_Name ASC, USERID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF00104SS_1] TO [DYNGRP]
GO
