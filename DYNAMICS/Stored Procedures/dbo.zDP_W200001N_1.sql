SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_W200001N_1] (@BS int, @RPTNGYR smallint, @RPTNGYR_RS smallint, @RPTNGYR_RE smallint) AS  set nocount on IF @RPTNGYR_RS IS NULL BEGIN SELECT TOP 25  RPTNGYR, TRANSMTR, TRANSADR, TRANSCTY, STATECD, ZIPCODE, PHONNAME, EPRIDNBR, CMPTRMFG, RTRNNAME, RTRNADDR, RTRNCITY, RTRNSTAT, RTRNZIP, DEX_ROW_ID FROM .W200001 WHERE ( RPTNGYR > @RPTNGYR ) ORDER BY RPTNGYR ASC END ELSE IF @RPTNGYR_RS = @RPTNGYR_RE BEGIN SELECT TOP 25  RPTNGYR, TRANSMTR, TRANSADR, TRANSCTY, STATECD, ZIPCODE, PHONNAME, EPRIDNBR, CMPTRMFG, RTRNNAME, RTRNADDR, RTRNCITY, RTRNSTAT, RTRNZIP, DEX_ROW_ID FROM .W200001 WHERE RPTNGYR = @RPTNGYR_RS AND ( RPTNGYR > @RPTNGYR ) ORDER BY RPTNGYR ASC END ELSE BEGIN SELECT TOP 25  RPTNGYR, TRANSMTR, TRANSADR, TRANSCTY, STATECD, ZIPCODE, PHONNAME, EPRIDNBR, CMPTRMFG, RTRNNAME, RTRNADDR, RTRNCITY, RTRNSTAT, RTRNZIP, DEX_ROW_ID FROM .W200001 WHERE RPTNGYR BETWEEN @RPTNGYR_RS AND @RPTNGYR_RE AND ( RPTNGYR > @RPTNGYR ) ORDER BY RPTNGYR ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_W200001N_1] TO [DYNGRP]
GO