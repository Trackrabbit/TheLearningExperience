SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20320SS_1] (@Extender_Template_ID int, @Window_Number smallint, @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_Template_ID, Window_Number, LNITMSEQ, DEX_ROW_ID FROM .EXT20320 WHERE Extender_Template_ID = @Extender_Template_ID AND Window_Number = @Window_Number AND LNITMSEQ = @LNITMSEQ ORDER BY Extender_Template_ID ASC, Window_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20320SS_1] TO [DYNGRP]
GO
