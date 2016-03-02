SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7140000SI] (@BSSI_Recognition_SOrigin smallint, @BSSI_Recognition_SNumber char(25), @MDFUSRID char(15), @MODIFDT datetime, @TIME1 datetime, @ENDDATE datetime, @BSSI_OrigDeferralEndDate datetime, @BSSI_RecalculationDate datetime, @BSSI_ReasonForChange char(55), @BSSI_OriginEndDateChange smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7140000 (BSSI_Recognition_SOrigin, BSSI_Recognition_SNumber, MDFUSRID, MODIFDT, TIME1, ENDDATE, BSSI_OrigDeferralEndDate, BSSI_RecalculationDate, BSSI_ReasonForChange, BSSI_OriginEndDateChange) VALUES ( @BSSI_Recognition_SOrigin, @BSSI_Recognition_SNumber, @MDFUSRID, @MODIFDT, @TIME1, @ENDDATE, @BSSI_OrigDeferralEndDate, @BSSI_RecalculationDate, @BSSI_ReasonForChange, @BSSI_OriginEndDateChange) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7140000SI] TO [DYNGRP]
GO
