SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640014SS_3] (@BSSI_Template_ID char(25), @BSSI_OccupancyTypeID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Template_ID, LNSEQNBR, BSSI_OccupancyTypeID, BSSI_Description, DEX_ROW_ID FROM .B4640014 WHERE BSSI_Template_ID = @BSSI_Template_ID AND BSSI_OccupancyTypeID = @BSSI_OccupancyTypeID ORDER BY BSSI_Template_ID ASC, BSSI_OccupancyTypeID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640014SS_3] TO [DYNGRP]
GO
