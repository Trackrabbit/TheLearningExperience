SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510010SS_1] (@MJW_Offering_ID char(21), @MJW_Log_User char(15), @MJW_Log_Date datetime, @MJW_Log_Time datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Offering_ID, MJW_Log_User, MJW_Log_Date, MJW_Log_Time, MJW_Log_Type, DEX_ROW_ID, CMMTTEXT FROM .B0510010 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJW_Log_User = @MJW_Log_User AND MJW_Log_Date = @MJW_Log_Date AND MJW_Log_Time = @MJW_Log_Time ORDER BY MJW_Offering_ID ASC, MJW_Log_User ASC, MJW_Log_Date ASC, MJW_Log_Time ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510010SS_1] TO [DYNGRP]
GO
