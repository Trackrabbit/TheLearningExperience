SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10110F_2] (@DESCEXPR_RS char(51), @DESCEXPR_RE char(51)) AS  set nocount on IF @DESCEXPR_RS IS NULL BEGIN SELECT TOP 25  PRCSHID, DESCEXPR, NTPRONLY, ACTIVE, STRTDATE, ENDDATE, NOTEINDX, PROMO, CURNCYID, DEX_ROW_ID FROM .SOP10110 ORDER BY DESCEXPR ASC, DEX_ROW_ID ASC END ELSE IF @DESCEXPR_RS = @DESCEXPR_RE BEGIN SELECT TOP 25  PRCSHID, DESCEXPR, NTPRONLY, ACTIVE, STRTDATE, ENDDATE, NOTEINDX, PROMO, CURNCYID, DEX_ROW_ID FROM .SOP10110 WHERE DESCEXPR = @DESCEXPR_RS ORDER BY DESCEXPR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  PRCSHID, DESCEXPR, NTPRONLY, ACTIVE, STRTDATE, ENDDATE, NOTEINDX, PROMO, CURNCYID, DEX_ROW_ID FROM .SOP10110 WHERE DESCEXPR BETWEEN @DESCEXPR_RS AND @DESCEXPR_RE ORDER BY DESCEXPR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10110F_2] TO [DYNGRP]
GO