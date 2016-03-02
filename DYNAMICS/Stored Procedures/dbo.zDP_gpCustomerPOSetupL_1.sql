SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpCustomerPOSetupL_1] (@SOPTYPE_RS smallint, @SOPTYPE_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, gpCheckType, gpCheckTypeWindow, MakeRequired, WarningLevel, gpWarningMessage, CheckWorkAndHistory, PASSWORD, DEX_ROW_ID FROM .gpCustomerPOSetup ORDER BY SOPTYPE DESC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, gpCheckType, gpCheckTypeWindow, MakeRequired, WarningLevel, gpWarningMessage, CheckWorkAndHistory, PASSWORD, DEX_ROW_ID FROM .gpCustomerPOSetup WHERE SOPTYPE = @SOPTYPE_RS ORDER BY SOPTYPE DESC END ELSE BEGIN SELECT TOP 25  SOPTYPE, gpCheckType, gpCheckTypeWindow, MakeRequired, WarningLevel, gpWarningMessage, CheckWorkAndHistory, PASSWORD, DEX_ROW_ID FROM .gpCustomerPOSetup WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE ORDER BY SOPTYPE DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpCustomerPOSetupL_1] TO [DYNGRP]
GO
