SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT10200SS_1] (@Lookup_Number int) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  Lookup_Number, Extender_Type, Extender_ID, DEX_ROW_ID FROM .EXT10200 WHERE Lookup_Number = @Lookup_Number ORDER BY Lookup_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT10200SS_1] TO [DYNGRP]
GO
