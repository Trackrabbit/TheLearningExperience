SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PA00001L_1] (@CUSTNMBR_RS char(15), @CUSTNMBR_RE char(15)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, VENDORID, CURNCYID, RATETPID, CREATDDT, CRUSRID, MODIFDT, DEX_ROW_ID FROM .PA00001 ORDER BY CUSTNMBR DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, VENDORID, CURNCYID, RATETPID, CREATDDT, CRUSRID, MODIFDT, DEX_ROW_ID FROM .PA00001 WHERE CUSTNMBR = @CUSTNMBR_RS ORDER BY CUSTNMBR DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, VENDORID, CURNCYID, RATETPID, CREATDDT, CRUSRID, MODIFDT, DEX_ROW_ID FROM .PA00001 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE ORDER BY CUSTNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PA00001L_1] TO [DYNGRP]
GO
