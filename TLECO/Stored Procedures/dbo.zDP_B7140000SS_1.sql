SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7140000SS_1] (@BSSI_Recognition_SOrigin smallint, @BSSI_Recognition_SNumber char(25), @MDFUSRID char(15), @MODIFDT datetime, @TIME1 datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Recognition_SOrigin, BSSI_Recognition_SNumber, MDFUSRID, MODIFDT, TIME1, ENDDATE, BSSI_OrigDeferralEndDate, BSSI_RecalculationDate, BSSI_ReasonForChange, BSSI_OriginEndDateChange, DEX_ROW_ID FROM .B7140000 WHERE BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND MDFUSRID = @MDFUSRID AND MODIFDT = @MODIFDT AND TIME1 = @TIME1 ORDER BY BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC, MDFUSRID ASC, MODIFDT ASC, TIME1 ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7140000SS_1] TO [DYNGRP]
GO
