SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF00104N_1] (@BS int, @Workflow_Type_Name char(51), @USERID char(15), @Workflow_Type_Name_RS char(51), @USERID_RS char(15), @Workflow_Type_Name_RE char(51), @USERID_RE char(15)) AS  set nocount on IF @Workflow_Type_Name_RS IS NULL BEGIN SELECT TOP 25  Workflow_Type_Name, USERID, DEX_ROW_TS, DEX_ROW_ID FROM .WF00104 WHERE ( Workflow_Type_Name = @Workflow_Type_Name AND USERID > @USERID OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, USERID ASC END ELSE IF @Workflow_Type_Name_RS = @Workflow_Type_Name_RE BEGIN SELECT TOP 25  Workflow_Type_Name, USERID, DEX_ROW_TS, DEX_ROW_ID FROM .WF00104 WHERE Workflow_Type_Name = @Workflow_Type_Name_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( Workflow_Type_Name = @Workflow_Type_Name AND USERID > @USERID OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, USERID ASC END ELSE BEGIN SELECT TOP 25  Workflow_Type_Name, USERID, DEX_ROW_TS, DEX_ROW_ID FROM .WF00104 WHERE Workflow_Type_Name BETWEEN @Workflow_Type_Name_RS AND @Workflow_Type_Name_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( Workflow_Type_Name = @Workflow_Type_Name AND USERID > @USERID OR Workflow_Type_Name > @Workflow_Type_Name ) ORDER BY Workflow_Type_Name ASC, USERID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF00104N_1] TO [DYNGRP]
GO
