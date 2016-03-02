SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpCustomerPOSetupSS_1] (@SOPTYPE smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SOPTYPE, gpCheckType, gpCheckTypeWindow, MakeRequired, WarningLevel, gpWarningMessage, CheckWorkAndHistory, PASSWORD, DEX_ROW_ID FROM .gpCustomerPOSetup WHERE SOPTYPE = @SOPTYPE ORDER BY SOPTYPE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpCustomerPOSetupSS_1] TO [DYNGRP]
GO
