SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR30500SI] (@EMPLOYID char(15), @Pay_Schedule char(15), @YEAR1 smallint, @PERIODID smallint, @Workflow_Status smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR30500 (EMPLOYID, Pay_Schedule, YEAR1, PERIODID, Workflow_Status) VALUES ( @EMPLOYID, @Pay_Schedule, @YEAR1, @PERIODID, @Workflow_Status) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR30500SI] TO [DYNGRP]
GO
