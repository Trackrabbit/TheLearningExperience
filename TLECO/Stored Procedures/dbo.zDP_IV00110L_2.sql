SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00110L_2] (@PLANNERNAME_RS char(31), @PLANNERID_RS char(15), @PLANNERNAME_RE char(31), @PLANNERID_RE char(15)) AS  set nocount on IF @PLANNERNAME_RS IS NULL BEGIN SELECT TOP 25  PLANNERID, PLANNERNAME, NOTEINDX, DEX_ROW_ID FROM .IV00110 ORDER BY PLANNERNAME DESC, PLANNERID DESC END ELSE IF @PLANNERNAME_RS = @PLANNERNAME_RE BEGIN SELECT TOP 25  PLANNERID, PLANNERNAME, NOTEINDX, DEX_ROW_ID FROM .IV00110 WHERE PLANNERNAME = @PLANNERNAME_RS AND PLANNERID BETWEEN @PLANNERID_RS AND @PLANNERID_RE ORDER BY PLANNERNAME DESC, PLANNERID DESC END ELSE BEGIN SELECT TOP 25  PLANNERID, PLANNERNAME, NOTEINDX, DEX_ROW_ID FROM .IV00110 WHERE PLANNERNAME BETWEEN @PLANNERNAME_RS AND @PLANNERNAME_RE AND PLANNERID BETWEEN @PLANNERID_RS AND @PLANNERID_RE ORDER BY PLANNERNAME DESC, PLANNERID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00110L_2] TO [DYNGRP]
GO
