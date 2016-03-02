SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR00402SS_2] (@PAYRCORD char(7), @EMPLOYID char(15), @Effective_Date datetime) AS  set nocount on SELECT TOP 1  EMPLOYID, PAYRCORD, Effective_Date, PAYRTAMT, CHANGEREASON_I, PayStepStatus, PYSTPTBLID, Step, DEX_ROW_ID FROM .UPR00402 WHERE PAYRCORD = @PAYRCORD AND EMPLOYID = @EMPLOYID AND Effective_Date = @Effective_Date ORDER BY PAYRCORD ASC, EMPLOYID ASC, Effective_Date ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR00402SS_2] TO [DYNGRP]
GO