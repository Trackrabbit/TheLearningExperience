SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7134300SS_2] (@BSSI_Recognition_SNumber char(25), @STRTDATE datetime, @ENDDATE datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Recognition_SNumber, BSSI_Line_Item_Sequence, SEQNUMBR, STRTDATE, ENDDATE, BSSI_Recognition_Amount, BSSI_Amount_Changed, BSSI_Merged, BSSI_Orig_Line_Item_Seq, PERIODID, BSSI_Recognition_Type, YEAR1, BSSI_Identifier, DEX_ROW_ID FROM .B7134300 WHERE BSSI_Recognition_SNumber = @BSSI_Recognition_SNumber AND STRTDATE = @STRTDATE AND ENDDATE = @ENDDATE ORDER BY BSSI_Recognition_SNumber ASC, STRTDATE ASC, ENDDATE ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7134300SS_2] TO [DYNGRP]
GO
