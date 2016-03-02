SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR30100SI] (@EMPLOYID char(15), @Workflow_Status smallint, @CREATDDT datetime, @CREATETIME datetime, @Flags smallint, @SupervisorADLogin char(85), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .HR30100 (EMPLOYID, Workflow_Status, CREATDDT, CREATETIME, Flags, SupervisorADLogin) VALUES ( @EMPLOYID, @Workflow_Status, @CREATDDT, @CREATETIME, @Flags, @SupervisorADLogin) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR30100SI] TO [DYNGRP]
GO
