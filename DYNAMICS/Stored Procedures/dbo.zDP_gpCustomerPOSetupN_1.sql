SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpCustomerPOSetupN_1] (@BS int, @SOPTYPE smallint, @SOPTYPE_RS smallint, @SOPTYPE_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @SOPTYPE_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, gpCheckType, gpCheckTypeWindow, MakeRequired, WarningLevel, gpWarningMessage, CheckWorkAndHistory, PASSWORD, DEX_ROW_ID FROM .gpCustomerPOSetup WHERE ( SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC END ELSE IF @SOPTYPE_RS = @SOPTYPE_RE BEGIN SELECT TOP 25  SOPTYPE, gpCheckType, gpCheckTypeWindow, MakeRequired, WarningLevel, gpWarningMessage, CheckWorkAndHistory, PASSWORD, DEX_ROW_ID FROM .gpCustomerPOSetup WHERE SOPTYPE = @SOPTYPE_RS AND ( SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC END ELSE BEGIN SELECT TOP 25  SOPTYPE, gpCheckType, gpCheckTypeWindow, MakeRequired, WarningLevel, gpWarningMessage, CheckWorkAndHistory, PASSWORD, DEX_ROW_ID FROM .gpCustomerPOSetup WHERE SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND ( SOPTYPE > @SOPTYPE ) ORDER BY SOPTYPE ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpCustomerPOSetupN_1] TO [DYNGRP]
GO
