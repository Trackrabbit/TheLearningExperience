SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273535SS_1] (@NDS_Date datetime, @NDS_Time datetime) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  NDS_Date, NDS_Time, NDS_Stage, MSO_Doc_Number, NDS_Doc_Number2, NDS_ErrorCode, NDS_Failure_Description1, NDS_Failure_Description2, DEX_ROW_ID FROM .MS273535 WHERE NDS_Date = @NDS_Date AND NDS_Time = @NDS_Time ORDER BY NDS_Date ASC, NDS_Time ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273535SS_1] TO [DYNGRP]
GO
