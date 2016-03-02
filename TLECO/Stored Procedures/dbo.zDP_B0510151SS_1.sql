SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510151SS_1] (@IMS_Type_of_Distribution smallint, @MJW_Distribution_Type char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  IMS_Type_of_Distribution, MJW_Distribution_Type, MJW_Distribution_Type_De, BSSI_AP_Account_Index, NOTEINDX, DEX_ROW_ID FROM .B0510151 WHERE IMS_Type_of_Distribution = @IMS_Type_of_Distribution AND MJW_Distribution_Type = @MJW_Distribution_Type ORDER BY IMS_Type_of_Distribution ASC, MJW_Distribution_Type ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510151SS_1] TO [DYNGRP]
GO
