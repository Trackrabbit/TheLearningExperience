SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY40103SS_1] (@YEAR1 smallint) AS  set nocount on SELECT TOP 1  YEAR1, FSTFSCDY, LSTFSCDY, NUMOFPER, HISTORYR, DEX_ROW_ID FROM .SY40103 WHERE YEAR1 = @YEAR1 ORDER BY YEAR1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY40103SS_1] TO [DYNGRP]
GO
