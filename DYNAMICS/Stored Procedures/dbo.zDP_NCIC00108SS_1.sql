SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC00108SS_1] (@USERID char(15)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, NCUSERSEC_1, NCUSERSEC_2, NCUSERSEC_3, NCUSERSEC_4, NCUSERSEC_5, NC_SpareBools_1, NC_SpareBools_2, NC_SpareBools_3, NC_SpareBools_4, NC_SpareBools_5, NC_SpareInts_1, NC_SpareInts_2, NC_SpareInts_3, NC_SpareInts_4, NC_SpareInts_5, NC_SpareInts_6, NC_SpareInts_7, NC_SpareInts_8, NC_SpareInts_9, NC_SpareInts_10, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, DEX_ROW_ID FROM .NCIC00108 WHERE USERID = @USERID ORDER BY USERID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC00108SS_1] TO [DYNGRP]
GO
