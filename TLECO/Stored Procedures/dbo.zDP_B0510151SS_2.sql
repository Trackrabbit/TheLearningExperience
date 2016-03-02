SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510151SS_2] (@MJW_Distribution_Type_De char(51), @MJW_Distribution_Type char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  IMS_Type_of_Distribution, MJW_Distribution_Type, MJW_Distribution_Type_De, BSSI_AP_Account_Index, NOTEINDX, DEX_ROW_ID FROM .B0510151 WHERE MJW_Distribution_Type_De = @MJW_Distribution_Type_De AND MJW_Distribution_Type = @MJW_Distribution_Type ORDER BY MJW_Distribution_Type_De ASC, MJW_Distribution_Type ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510151SS_2] TO [DYNGRP]
GO
