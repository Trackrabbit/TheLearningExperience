SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_gpCustomerPOSetupSI] (@SOPTYPE smallint, @gpCheckType tinyint, @gpCheckTypeWindow tinyint, @MakeRequired tinyint, @WarningLevel smallint, @gpWarningMessage char(133), @CheckWorkAndHistory smallint, @PASSWORD binary(16), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .gpCustomerPOSetup (SOPTYPE, gpCheckType, gpCheckTypeWindow, MakeRequired, WarningLevel, gpWarningMessage, CheckWorkAndHistory, PASSWORD) VALUES ( @SOPTYPE, @gpCheckType, @gpCheckTypeWindow, @MakeRequired, @WarningLevel, @gpWarningMessage, @CheckWorkAndHistory, @PASSWORD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_gpCustomerPOSetupSI] TO [DYNGRP]
GO
