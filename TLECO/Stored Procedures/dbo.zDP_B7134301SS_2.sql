SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7134301SS_2] (@BSSI_Line_Item_Sequence int, @STRTDATE datetime, @ENDDATE datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_IsAmount_Recognized, BSSI_IsAmount_Stub, BSSI_Merged, BSSI_Orig_Line_Item_Seq, PERIODID, YEAR1, BSSI_Recognition_Type, BSSI_Identifier, DEX_ROW_ID FROM .B7134301 WHERE BSSI_Line_Item_Sequence = @BSSI_Line_Item_Sequence AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE ORDER BY BSSI_Line_Item_Sequence ASC, STRTDATE ASC, ENDDATE ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7134301SS_2] TO [DYNGRP]
GO
