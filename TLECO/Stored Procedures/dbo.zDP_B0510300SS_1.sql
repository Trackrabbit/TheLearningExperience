SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510300SS_1] (@MJW_Offering_ID char(21), @MJW_PassSeriesID char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Offering_ID, MJW_PassSeriesID, MJWPassSHRTNAME, MJW_Series_ID, DEX_ROW_ID FROM .B0510300 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJW_PassSeriesID = @MJW_PassSeriesID ORDER BY MJW_Offering_ID ASC, MJW_PassSeriesID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510300SS_1] TO [DYNGRP]
GO
