SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42203SS_1] (@Time_on_Behalf_Code char(15), @Employee_ID_Assigned char(15)) AS  set nocount on SELECT TOP 1  Time_on_Behalf_Code, Employee_ID_Assigned, DEX_ROW_ID FROM .UPR42203 WHERE Time_on_Behalf_Code = @Time_on_Behalf_Code AND Employee_ID_Assigned = @Employee_ID_Assigned ORDER BY Time_on_Behalf_Code ASC, Employee_ID_Assigned ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42203SS_1] TO [DYNGRP]
GO
