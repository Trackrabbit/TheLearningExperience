SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640713SS_2] (@LOCNCODE char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, LNITMSEQ, BSSI_Amenity_ID, NOTEINDX, DEX_ROW_ID FROM .B4640713 WHERE LOCNCODE = @LOCNCODE ORDER BY LOCNCODE ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640713SS_2] TO [DYNGRP]
GO