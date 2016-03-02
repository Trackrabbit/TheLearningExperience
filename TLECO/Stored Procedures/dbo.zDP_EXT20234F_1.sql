SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20234F_1] (@Extender_Navigation_List_RS int, @LNITMSEQ_RS int, @Extender_Navigation_List_RE int, @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @Extender_Navigation_List_RS IS NULL BEGIN SELECT TOP 25  Extender_Navigation_List, LNITMSEQ, DEX_ROW_ID FROM .EXT20234 ORDER BY Extender_Navigation_List ASC, LNITMSEQ ASC END ELSE IF @Extender_Navigation_List_RS = @Extender_Navigation_List_RE BEGIN SELECT TOP 25  Extender_Navigation_List, LNITMSEQ, DEX_ROW_ID FROM .EXT20234 WHERE Extender_Navigation_List = @Extender_Navigation_List_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Navigation_List ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Extender_Navigation_List, LNITMSEQ, DEX_ROW_ID FROM .EXT20234 WHERE Extender_Navigation_List BETWEEN @Extender_Navigation_List_RS AND @Extender_Navigation_List_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE ORDER BY Extender_Navigation_List ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20234F_1] TO [DYNGRP]
GO
