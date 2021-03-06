SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SY03300SS_1] (@PYMTRMID char(21)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  PYMTRMID, DUETYPE, DUEDTDS, DISCTYPE, DISCDTDS, DSCLCTYP, DSCDLRAM, DSCPCTAM, SALPURCH, DISCNTCB, FREIGHT, MISC, TAX, NOTEINDX, CBUVATMD, LSTUSRED, MODIFDT, CREATDDT, USEGRPER, CalculateDateFrom, CalculateDateFromDays, DueMonth, DiscountMonth, DEX_ROW_ID FROM .SY03300 WHERE PYMTRMID = @PYMTRMID ORDER BY PYMTRMID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03300SS_1] TO [DYNGRP]
GO
