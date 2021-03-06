SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY03000L_1] (@SHIPMTHD_RS char(15), @SHIPMTHD_RE char(15)) AS  set nocount on IF @SHIPMTHD_RS IS NULL BEGIN SELECT TOP 25  SHIPMTHD, SHMTHDSC, PHONNAME, CONTACT, CARRACCT, CARRIER, SHIPTYPE, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY03000 ORDER BY SHIPMTHD DESC END ELSE IF @SHIPMTHD_RS = @SHIPMTHD_RE BEGIN SELECT TOP 25  SHIPMTHD, SHMTHDSC, PHONNAME, CONTACT, CARRACCT, CARRIER, SHIPTYPE, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY03000 WHERE SHIPMTHD = @SHIPMTHD_RS ORDER BY SHIPMTHD DESC END ELSE BEGIN SELECT TOP 25  SHIPMTHD, SHMTHDSC, PHONNAME, CONTACT, CARRACCT, CARRIER, SHIPTYPE, NOTEINDX, LSTUSRED, CREATDDT, MODIFDT, DEX_ROW_ID FROM .SY03000 WHERE SHIPMTHD BETWEEN @SHIPMTHD_RS AND @SHIPMTHD_RE ORDER BY SHIPMTHD DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03000L_1] TO [DYNGRP]
GO
