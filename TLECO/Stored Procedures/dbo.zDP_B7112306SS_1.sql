SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7112306SS_1] (@BSSI_Recognition_SNumber char(25), @LNITMSEQ int, @BSSI_Line_Item_Sequence int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Recognition_SNumber, LNITMSEQ, BSSI_Line_Item_Sequence, BSSI_Recognition_Type, BSSI_Recog_Frequency, BSSI_Recog_Length_Period, BSSI_Recog_Length_Months, STRTDATE, ENDDATE, DEX_ROW_ID FROM .B7112306 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND LNITMSEQ = @LNITMSEQ AND BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence ORDER BY BSSI_Recognition_SNumber ASC, LNITMSEQ ASC, BSSI_Line_Item_Sequence ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7112306SS_1] TO [DYNGRP]
GO
