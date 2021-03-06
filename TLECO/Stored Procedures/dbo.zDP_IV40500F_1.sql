SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40500F_1] (@LOTTYPE_RS char(11), @LOTTYPE_RE char(11)) AS  set nocount on IF @LOTTYPE_RS IS NULL BEGIN SELECT TOP 25  LOTTYPE, LTATRDSC_1, LTATRDSC_2, LTATRDSC_3, LTATRDSC_4, LTATRDSC_5, NOTEINDX, DEX_ROW_ID FROM .IV40500 ORDER BY LOTTYPE ASC END ELSE IF @LOTTYPE_RS = @LOTTYPE_RE BEGIN SELECT TOP 25  LOTTYPE, LTATRDSC_1, LTATRDSC_2, LTATRDSC_3, LTATRDSC_4, LTATRDSC_5, NOTEINDX, DEX_ROW_ID FROM .IV40500 WHERE LOTTYPE = @LOTTYPE_RS ORDER BY LOTTYPE ASC END ELSE BEGIN SELECT TOP 25  LOTTYPE, LTATRDSC_1, LTATRDSC_2, LTATRDSC_3, LTATRDSC_4, LTATRDSC_5, NOTEINDX, DEX_ROW_ID FROM .IV40500 WHERE LOTTYPE BETWEEN @LOTTYPE_RS AND @LOTTYPE_RE ORDER BY LOTTYPE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40500F_1] TO [DYNGRP]
GO
