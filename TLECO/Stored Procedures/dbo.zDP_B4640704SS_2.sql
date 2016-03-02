SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640704SS_2] (@LOCNCODE char(11), @BSSI_DeedRestrictionID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, LNITMSEQ, BSSI_DeedRestrictionID, NOTEINDX, DEX_ROW_ID FROM .B4640704 WHERE LOCNCODE = @LOCNCODE AND BSSI_DeedRestrictionID = @BSSI_DeedRestrictionID ORDER BY LOCNCODE ASC, BSSI_DeedRestrictionID ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640704SS_2] TO [DYNGRP]
GO