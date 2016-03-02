SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT20501SS_1] (@Extender_View_ID char(15), @LNITMSEQ int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Extender_View_ID, LNITMSEQ, Link_To_Product_ID, Link_To_Table, PRODID, TABLTECH, Extender_View_From_Type, Extender_View_Table_Type, Extender_From_Line, DEX_ROW_ID FROM .EXT20501 WHERE Extender_View_ID = @Extender_View_ID AND LNITMSEQ = @LNITMSEQ ORDER BY Extender_View_ID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT20501SS_1] TO [DYNGRP]
GO
