SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_WF00104SI] (@Workflow_Type_Name char(51), @USERID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .WF00104 (Workflow_Type_Name, USERID) VALUES ( @Workflow_Type_Name, @USERID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_WF00104SI] TO [DYNGRP]
GO
