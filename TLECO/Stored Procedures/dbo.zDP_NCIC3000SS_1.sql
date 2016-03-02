SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3000SS_1] (@CMRECNUM numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  CMRECNUM, NC_Process_Templates, NC_FunctionalOriginating, NC_Export_FileName, NC_Dest_Accs_Required, NC_SpareInts_1, NC_SpareInts_2, NC_SpareInts_3, NC_SpareInts_4, NC_SpareInts_5, NC_SpareInts_6, NC_SpareInts_7, NC_SpareInts_8, NC_SpareInts_9, NC_SpareInts_10, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, NC_SpareBools_1, NC_SpareBools_2, NC_SpareBools_3, NC_SpareBools_4, NC_SpareBools_5, DEX_ROW_ID FROM .NCIC3000 WHERE CMRECNUM = @CMRECNUM ORDER BY CMRECNUM ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3000SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3000SS_1] TO [public]
GO
