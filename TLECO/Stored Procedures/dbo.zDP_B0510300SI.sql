SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510300SI] (@MJW_Offering_ID char(21), @MJW_PassSeriesID char(21), @MJWPassSHRTNAME char(15), @MJW_Series_ID char(21), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510300 (MJW_Offering_ID, MJW_PassSeriesID, MJWPassSHRTNAME, MJW_Series_ID) VALUES ( @MJW_Offering_ID, @MJW_PassSeriesID, @MJWPassSHRTNAME, @MJW_Series_ID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510300SI] TO [DYNGRP]
GO
