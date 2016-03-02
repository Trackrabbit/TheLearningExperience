SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910100SS_3] (@SCHEDULE_NUMBER char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  SCHEDULE_NUMBER, DOCNUMBR, DOCTYPE, BSSI_Late_Fee_Amount, DOCAMNT, Schedule_Payment_Number, DOCDATE, Status, VOIDSTTS, DEX_ROW_ID FROM .B2910100 WHERE SCHEDULE_NUMBER = @SCHEDULE_NUMBER ORDER BY SCHEDULE_NUMBER ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910100SS_3] TO [DYNGRP]
GO
