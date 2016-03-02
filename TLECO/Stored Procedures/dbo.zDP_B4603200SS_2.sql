SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603200SS_2] (@BSSI_Description char(51)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_CPI_Schedule_ID, BSSI_Description, DATE1, TIME1, USERID, NOTEINDX, BSSI_CPIIndexCalculation, BSSI_CPIIndexAmtCalculat, BSSI_EscalateEffective, BSSI_Dummy, DEX_ROW_ID FROM .B4603200 WHERE BSSI_Description = @BSSI_Description ORDER BY BSSI_Description ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603200SS_2] TO [DYNGRP]
GO
