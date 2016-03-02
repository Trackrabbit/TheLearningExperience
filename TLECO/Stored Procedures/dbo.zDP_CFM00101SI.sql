SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00101SI] (@EBS_Forecast_ID char(15), @CHEKBKID char(15), @CFM_Exchange_Rate numeric(19,5), @CFM_Calc_Method smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CFM00101 (EBS_Forecast_ID, CHEKBKID, CFM_Exchange_Rate, CFM_Calc_Method) VALUES ( @EBS_Forecast_ID, @CHEKBKID, @CFM_Exchange_Rate, @CFM_Calc_Method) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00101SI] TO [DYNGRP]
GO
