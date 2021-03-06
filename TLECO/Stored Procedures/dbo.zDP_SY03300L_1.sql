SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SY03300L_1] (@PYMTRMID_RS char(21), @PYMTRMID_RE char(21)) AS /* 14.00.0084.000 */ set nocount on IF @PYMTRMID_RS IS NULL BEGIN SELECT TOP 25  PYMTRMID, DUETYPE, DUEDTDS, DISCTYPE, DISCDTDS, DSCLCTYP, DSCDLRAM, DSCPCTAM, SALPURCH, DISCNTCB, FREIGHT, MISC, TAX, NOTEINDX, CBUVATMD, LSTUSRED, MODIFDT, CREATDDT, USEGRPER, CalculateDateFrom, CalculateDateFromDays, DueMonth, DiscountMonth, DEX_ROW_ID FROM .SY03300 ORDER BY PYMTRMID DESC END ELSE IF @PYMTRMID_RS = @PYMTRMID_RE BEGIN SELECT TOP 25  PYMTRMID, DUETYPE, DUEDTDS, DISCTYPE, DISCDTDS, DSCLCTYP, DSCDLRAM, DSCPCTAM, SALPURCH, DISCNTCB, FREIGHT, MISC, TAX, NOTEINDX, CBUVATMD, LSTUSRED, MODIFDT, CREATDDT, USEGRPER, CalculateDateFrom, CalculateDateFromDays, DueMonth, DiscountMonth, DEX_ROW_ID FROM .SY03300 WHERE PYMTRMID = @PYMTRMID_RS ORDER BY PYMTRMID DESC END ELSE BEGIN SELECT TOP 25  PYMTRMID, DUETYPE, DUEDTDS, DISCTYPE, DISCDTDS, DSCLCTYP, DSCDLRAM, DSCPCTAM, SALPURCH, DISCNTCB, FREIGHT, MISC, TAX, NOTEINDX, CBUVATMD, LSTUSRED, MODIFDT, CREATDDT, USEGRPER, CalculateDateFrom, CalculateDateFromDays, DueMonth, DiscountMonth, DEX_ROW_ID FROM .SY03300 WHERE PYMTRMID BETWEEN @PYMTRMID_RS AND @PYMTRMID_RE ORDER BY PYMTRMID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03300L_1] TO [DYNGRP]
GO
