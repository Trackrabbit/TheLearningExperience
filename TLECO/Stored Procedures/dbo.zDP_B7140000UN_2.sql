SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7140000UN_2] (@BS int, @BSSI_Recognition_SOrigin smallint, @BSSI_Recognition_SNumber char(25), @BSSI_Recognition_SOrigin_RS smallint, @BSSI_Recognition_SNumber_RS char(25), @BSSI_Recognition_SOrigin_RE smallint, @BSSI_Recognition_SNumber_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Recognition_SOrigin_RS IS NULL BEGIN SELECT TOP 25  BSSI_Recognition_SOrigin, BSSI_Recognition_SNumber, MDFUSRID, MODIFDT, TIME1, ENDDATE, BSSI_OrigDeferralEndDate, BSSI_RecalculationDate, BSSI_ReasonForChange, BSSI_OriginEndDateChange, DEX_ROW_ID FROM .B7140000 WHERE ( BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber OR BSSI_Recognition_SOrigin > @BSSI_Recognition_SOrigin ) ORDER BY BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Recognition_SOrigin_RS = @BSSI_Recognition_SOrigin_RE BEGIN SELECT TOP 25  BSSI_Recognition_SOrigin, BSSI_Recognition_SNumber, MDFUSRID, MODIFDT, TIME1, ENDDATE, BSSI_OrigDeferralEndDate, BSSI_RecalculationDate, BSSI_ReasonForChange, BSSI_OriginEndDateChange, DEX_ROW_ID FROM .B7140000 WHERE BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin_RS AND BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND ( BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber OR BSSI_Recognition_SOrigin > @BSSI_Recognition_SOrigin ) ORDER BY BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Recognition_SOrigin, BSSI_Recognition_SNumber, MDFUSRID, MODIFDT, TIME1, ENDDATE, BSSI_OrigDeferralEndDate, BSSI_RecalculationDate, BSSI_ReasonForChange, BSSI_OriginEndDateChange, DEX_ROW_ID FROM .B7140000 WHERE BSSI_Recognition_SOrigin BETWEEN @BSSI_Recognition_SOrigin_RS AND @BSSI_Recognition_SOrigin_RE AND BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND ( BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber OR BSSI_Recognition_SOrigin > @BSSI_Recognition_SOrigin ) ORDER BY BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7140000UN_2] TO [DYNGRP]
GO