SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7140000SS_2] (@BSSI_Recognition_SOrigin smallint, @BSSI_Recognition_SNumber char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Recognition_SOrigin, BSSI_Recognition_SNumber, MDFUSRID, MODIFDT, TIME1, ENDDATE, BSSI_OrigDeferralEndDate, BSSI_RecalculationDate, BSSI_ReasonForChange, BSSI_OriginEndDateChange, DEX_ROW_ID FROM .B7140000 WHERE BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber ORDER BY BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7140000SS_2] TO [DYNGRP]
GO
