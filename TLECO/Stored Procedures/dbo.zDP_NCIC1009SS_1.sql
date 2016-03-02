SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC1009SS_1] (@NC_Trigger_Account_Index int, @SOURCDOC char(11)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  NC_Trigger_Account_Index, SOURCDOC, NC_Post_IC_TRX_1, NC_Post_IC_TRX_2, NC_Post_IC_TRX_3, NC_Post_IC_TRX_4, NC_Post_IC_TRX_5, NC_SpareBools_1, NC_SpareBools_2, NC_SpareBools_3, NC_SpareBools_4, NC_SpareBools_5, NC_SpareInts_1, NC_SpareInts_2, NC_SpareInts_3, NC_SpareInts_4, NC_SpareInts_5, NC_SpareInts_6, NC_SpareInts_7, NC_SpareInts_8, NC_SpareInts_9, NC_SpareInts_10, DEX_ROW_ID FROM .NCIC1009 WHERE NC_Trigger_Account_Index = @NC_Trigger_Account_Index AND SOURCDOC = @SOURCDOC ORDER BY NC_Trigger_Account_Index ASC, SOURCDOC ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1009SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1009SS_1] TO [public]
GO
