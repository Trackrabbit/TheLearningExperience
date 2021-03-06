SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00106L_2] (@VENDORID_RS char(15), @VENDORID_RE char(15)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  VENDORID, ADRSCODE, LOCNCODE, RTV_Default_Ship_To_Loca, DEX_ROW_ID FROM .SVC00106 ORDER BY VENDORID DESC, DEX_ROW_ID DESC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  VENDORID, ADRSCODE, LOCNCODE, RTV_Default_Ship_To_Loca, DEX_ROW_ID FROM .SVC00106 WHERE VENDORID = @VENDORID_RS ORDER BY VENDORID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  VENDORID, ADRSCODE, LOCNCODE, RTV_Default_Ship_To_Loca, DEX_ROW_ID FROM .SVC00106 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE ORDER BY VENDORID DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00106L_2] TO [DYNGRP]
GO
