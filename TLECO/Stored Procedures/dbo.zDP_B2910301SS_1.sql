SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910301SS_1] (@RMDTYPAL smallint, @RMDNUMWK char(17)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  RMDTYPAL, RMDNUMWK, BS29_Leasing_Schedule, DEX_ROW_ID FROM .B2910301 WHERE RMDTYPAL = @RMDTYPAL AND RMDNUMWK = @RMDNUMWK ORDER BY RMDTYPAL ASC, RMDNUMWK ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910301SS_1] TO [DYNGRP]
GO
