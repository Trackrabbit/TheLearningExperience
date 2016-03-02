SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20235SS_1] (@Extender_Navigation_List int, @USERID char(15), @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Navigation_List, USERID, LNITMSEQ, Field_ID, DEX_ROW_ID FROM .EXT20235 WHERE Extender_Navigation_List = @Extender_Navigation_List AND USERID = @USERID AND LNITMSEQ = @LNITMSEQ ORDER BY Extender_Navigation_List ASC, USERID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20235SS_1] TO [DYNGRP]
GO
