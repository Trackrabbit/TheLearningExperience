SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20234SS_1] (@Extender_Navigation_List int, @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Navigation_List, LNITMSEQ, DEX_ROW_ID FROM .EXT20234 WHERE Extender_Navigation_List = @Extender_Navigation_List AND LNITMSEQ = @LNITMSEQ ORDER BY Extender_Navigation_List ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20234SS_1] TO [DYNGRP]
GO
