SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_UPR10500SI] (@EMPLOYID char(15), @Pay_Schedule char(15), @YEAR1 smallint, @PERIODID smallint, @Workflow_Status smallint, @SupervisorADLogin char(85), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .UPR10500 (EMPLOYID, Pay_Schedule, YEAR1, PERIODID, Workflow_Status, SupervisorADLogin) VALUES ( @EMPLOYID, @Pay_Schedule, @YEAR1, @PERIODID, @Workflow_Status, @SupervisorADLogin) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR10500SI] TO [DYNGRP]
GO
