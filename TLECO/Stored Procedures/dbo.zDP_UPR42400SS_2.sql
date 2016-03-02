SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42400SS_2] (@DSCRIPTN char(31), @Restriction_Code char(15)) AS  set nocount on SELECT TOP 1  Restriction_Code, DSCRIPTN, Per_Day_CB, Per_Pay_Period_CB, Required_StartStop_CB, Department_CB, Position_CB, State_Tax_CB, Local_Tax_CB, Shift_CB, Days_Worked_CB, Weeks_Worked_CB, Notes_CB, Require_Electronic_Signa, Per_Day_Max, Per_Period_Min, Per_Period_Max, DEX_ROW_ID FROM .UPR42400 WHERE DSCRIPTN = @DSCRIPTN AND Restriction_Code = @Restriction_Code ORDER BY DSCRIPTN ASC, Restriction_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42400SS_2] TO [DYNGRP]
GO
