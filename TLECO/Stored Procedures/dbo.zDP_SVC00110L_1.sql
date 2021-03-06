SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00110L_1] (@PRICELVL_RS char(15), @PRICELVL_RE char(15)) AS  set nocount on IF @PRICELVL_RS IS NULL BEGIN SELECT TOP 25  PRICELVL, RTRNABLE, SVC_Standard_Percent, SVC_Overtime_Percent, SVC_Double_Percent, SVC_Hotline_Percent, SVC_Travel_Percent, SVC_Return_Percent, DEX_ROW_ID FROM .SVC00110 ORDER BY PRICELVL DESC END ELSE IF @PRICELVL_RS = @PRICELVL_RE BEGIN SELECT TOP 25  PRICELVL, RTRNABLE, SVC_Standard_Percent, SVC_Overtime_Percent, SVC_Double_Percent, SVC_Hotline_Percent, SVC_Travel_Percent, SVC_Return_Percent, DEX_ROW_ID FROM .SVC00110 WHERE PRICELVL = @PRICELVL_RS ORDER BY PRICELVL DESC END ELSE BEGIN SELECT TOP 25  PRICELVL, RTRNABLE, SVC_Standard_Percent, SVC_Overtime_Percent, SVC_Double_Percent, SVC_Hotline_Percent, SVC_Travel_Percent, SVC_Return_Percent, DEX_ROW_ID FROM .SVC00110 WHERE PRICELVL BETWEEN @PRICELVL_RS AND @PRICELVL_RE ORDER BY PRICELVL DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00110L_1] TO [DYNGRP]
GO
