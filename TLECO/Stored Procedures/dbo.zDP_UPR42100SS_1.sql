SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42100SS_1] (@Pay_Schedule char(15)) AS  set nocount on SELECT TOP 1  Pay_Schedule, DSCRIPTN, PAYPEROD, Past_Pay_Periods, Current_Pay_Periods, DEX_ROW_ID FROM .UPR42100 WHERE Pay_Schedule = @Pay_Schedule ORDER BY Pay_Schedule ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42100SS_1] TO [DYNGRP]
GO
