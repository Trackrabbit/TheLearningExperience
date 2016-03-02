SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SY03300SI] (@PYMTRMID char(21), @DUETYPE smallint, @DUEDTDS smallint, @DISCTYPE smallint, @DISCDTDS smallint, @DSCLCTYP smallint, @DSCDLRAM numeric(19,5), @DSCPCTAM smallint, @SALPURCH tinyint, @DISCNTCB tinyint, @FREIGHT tinyint, @MISC tinyint, @TAX tinyint, @NOTEINDX numeric(19,5), @CBUVATMD tinyint, @LSTUSRED char(15), @MODIFDT datetime, @CREATDDT datetime, @USEGRPER tinyint, @CalculateDateFrom smallint, @CalculateDateFromDays smallint, @DueMonth smallint, @DiscountMonth smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .SY03300 (PYMTRMID, DUETYPE, DUEDTDS, DISCTYPE, DISCDTDS, DSCLCTYP, DSCDLRAM, DSCPCTAM, SALPURCH, DISCNTCB, FREIGHT, MISC, TAX, NOTEINDX, CBUVATMD, LSTUSRED, MODIFDT, CREATDDT, USEGRPER, CalculateDateFrom, CalculateDateFromDays, DueMonth, DiscountMonth) VALUES ( @PYMTRMID, @DUETYPE, @DUEDTDS, @DISCTYPE, @DISCDTDS, @DSCLCTYP, @DSCDLRAM, @DSCPCTAM, @SALPURCH, @DISCNTCB, @FREIGHT, @MISC, @TAX, @NOTEINDX, @CBUVATMD, @LSTUSRED, @MODIFDT, @CREATDDT, @USEGRPER, @CalculateDateFrom, @CalculateDateFromDays, @DueMonth, @DiscountMonth) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03300SI] TO [DYNGRP]
GO
