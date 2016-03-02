SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4601400SS_1] (@BSSI_DeedRestrictionID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_DeedRestrictionID, BSSI_Description, NOTEINDX, DEX_ROW_ID FROM .B4601400 WHERE BSSI_DeedRestrictionID = @BSSI_DeedRestrictionID ORDER BY BSSI_DeedRestrictionID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4601400SS_1] TO [DYNGRP]
GO
