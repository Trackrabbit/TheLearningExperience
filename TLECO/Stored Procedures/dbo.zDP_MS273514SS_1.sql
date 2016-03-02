SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273514SS_1] (@MSO_Transfer_Date datetime, @MSO_Transfer_Time datetime, @SEQNUMBR int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_Transfer_Date, MSO_Transfer_Time, SEQNUMBR, BACHNUMB, BCHSOURC, ERMSGTXT, ERMSGTX2, MSO_TrxType, SOPNUMBE, SOPTYPE, MSO_New_SOP_Number, MSO_New_SOP_Type, MSO_PreAuthorize_Amount, MSO_BookAmount, CRCRDAMT, USERDATE, USERID, DEX_ROW_ID FROM .MS273514 WHERE MSO_Transfer_Date = @MSO_Transfer_Date AND MSO_Transfer_Time = @MSO_Transfer_Time AND SEQNUMBR = @SEQNUMBR ORDER BY MSO_Transfer_Date ASC, MSO_Transfer_Time ASC, SEQNUMBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273514SS_1] TO [DYNGRP]
GO
