SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR30100SS_1] (@EMPLOYID char(15), @CREATDDT datetime, @CREATETIME datetime) AS  set nocount on SELECT TOP 1  EMPLOYID, Workflow_Status, CREATDDT, CREATETIME, Flags, SupervisorADLogin, DEX_ROW_ID FROM .HR30100 WHERE EMPLOYID = @EMPLOYID AND CREATDDT = @CREATDDT AND CREATETIME = @CREATETIME ORDER BY EMPLOYID ASC, CREATDDT ASC, CREATETIME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR30100SS_1] TO [DYNGRP]
GO
