SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06201F_1] (@SERVICEBOM_RS char(31), @SEQUENCE1_RS numeric(19,5), @SERVICEBOM_RE char(31), @SEQUENCE1_RE numeric(19,5)) AS  set nocount on IF @SERVICEBOM_RS IS NULL BEGIN SELECT TOP 25  SERVICEBOM, SEQUENCE1, ITEMNMBR, ITEMDESC, QUANTITY, EFFDATE, EXPNDATE, NOTEINDX, DEX_ROW_ID FROM .SVC06201 ORDER BY SERVICEBOM ASC, SEQUENCE1 ASC END ELSE IF @SERVICEBOM_RS = @SERVICEBOM_RE BEGIN SELECT TOP 25  SERVICEBOM, SEQUENCE1, ITEMNMBR, ITEMDESC, QUANTITY, EFFDATE, EXPNDATE, NOTEINDX, DEX_ROW_ID FROM .SVC06201 WHERE SERVICEBOM = @SERVICEBOM_RS AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE ORDER BY SERVICEBOM ASC, SEQUENCE1 ASC END ELSE BEGIN SELECT TOP 25  SERVICEBOM, SEQUENCE1, ITEMNMBR, ITEMDESC, QUANTITY, EFFDATE, EXPNDATE, NOTEINDX, DEX_ROW_ID FROM .SVC06201 WHERE SERVICEBOM BETWEEN @SERVICEBOM_RS AND @SERVICEBOM_RE AND SEQUENCE1 BETWEEN @SEQUENCE1_RS AND @SEQUENCE1_RE ORDER BY SERVICEBOM ASC, SEQUENCE1 ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06201F_1] TO [DYNGRP]
GO
