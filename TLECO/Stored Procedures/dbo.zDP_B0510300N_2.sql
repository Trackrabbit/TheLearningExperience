SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510300N_2] (@BS int, @MJW_Offering_ID char(21), @MJWPassSHRTNAME char(15), @DEX_ROW_ID int, @MJW_Offering_ID_RS char(21), @MJWPassSHRTNAME_RS char(15), @MJW_Offering_ID_RE char(21), @MJWPassSHRTNAME_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Offering_ID_RS IS NULL BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_PassSeriesID, MJWPassSHRTNAME, MJW_Series_ID, DEX_ROW_ID FROM .B0510300 WHERE ( MJW_Offering_ID = @MJW_Offering_ID AND MJWPassSHRTNAME = @MJWPassSHRTNAME AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Offering_ID = @MJW_Offering_ID AND MJWPassSHRTNAME > @MJWPassSHRTNAME OR MJW_Offering_ID > @MJW_Offering_ID ) ORDER BY MJW_Offering_ID ASC, MJWPassSHRTNAME ASC, DEX_ROW_ID ASC END ELSE IF @MJW_Offering_ID_RS = @MJW_Offering_ID_RE BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_PassSeriesID, MJWPassSHRTNAME, MJW_Series_ID, DEX_ROW_ID FROM .B0510300 WHERE MJW_Offering_ID = @MJW_Offering_ID_RS AND MJWPassSHRTNAME BETWEEN @MJWPassSHRTNAME_RS AND @MJWPassSHRTNAME_RE AND ( MJW_Offering_ID = @MJW_Offering_ID AND MJWPassSHRTNAME = @MJWPassSHRTNAME AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Offering_ID = @MJW_Offering_ID AND MJWPassSHRTNAME > @MJWPassSHRTNAME OR MJW_Offering_ID > @MJW_Offering_ID ) ORDER BY MJW_Offering_ID ASC, MJWPassSHRTNAME ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  MJW_Offering_ID, MJW_PassSeriesID, MJWPassSHRTNAME, MJW_Series_ID, DEX_ROW_ID FROM .B0510300 WHERE MJW_Offering_ID BETWEEN @MJW_Offering_ID_RS AND @MJW_Offering_ID_RE AND MJWPassSHRTNAME BETWEEN @MJWPassSHRTNAME_RS AND @MJWPassSHRTNAME_RE AND ( MJW_Offering_ID = @MJW_Offering_ID AND MJWPassSHRTNAME = @MJWPassSHRTNAME AND DEX_ROW_ID > @DEX_ROW_ID OR MJW_Offering_ID = @MJW_Offering_ID AND MJWPassSHRTNAME > @MJWPassSHRTNAME OR MJW_Offering_ID > @MJW_Offering_ID ) ORDER BY MJW_Offering_ID ASC, MJWPassSHRTNAME ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510300N_2] TO [DYNGRP]
GO
