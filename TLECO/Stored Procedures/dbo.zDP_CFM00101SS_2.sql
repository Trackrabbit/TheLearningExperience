SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00101SS_2] (@CHEKBKID char(15)) AS  set nocount on SELECT TOP 1  EBS_Forecast_ID, CHEKBKID, CFM_Exchange_Rate, CFM_Calc_Method, DEX_ROW_ID FROM .CFM00101 WHERE CHEKBKID = @CHEKBKID ORDER BY CHEKBKID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00101SS_2] TO [DYNGRP]
GO