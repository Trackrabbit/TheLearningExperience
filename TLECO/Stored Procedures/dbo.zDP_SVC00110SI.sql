SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00110SI] (@PRICELVL char(15), @RTRNABLE tinyint, @SVC_Standard_Percent numeric(19,5), @SVC_Overtime_Percent numeric(19,5), @SVC_Double_Percent numeric(19,5), @SVC_Hotline_Percent numeric(19,5), @SVC_Travel_Percent numeric(19,5), @SVC_Return_Percent numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00110 (PRICELVL, RTRNABLE, SVC_Standard_Percent, SVC_Overtime_Percent, SVC_Double_Percent, SVC_Hotline_Percent, SVC_Travel_Percent, SVC_Return_Percent) VALUES ( @PRICELVL, @RTRNABLE, @SVC_Standard_Percent, @SVC_Overtime_Percent, @SVC_Double_Percent, @SVC_Hotline_Percent, @SVC_Travel_Percent, @SVC_Return_Percent) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00110SI] TO [DYNGRP]
GO
