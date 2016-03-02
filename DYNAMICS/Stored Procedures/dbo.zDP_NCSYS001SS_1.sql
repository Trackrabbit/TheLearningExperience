SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCSYS001SS_1] (@PRODID smallint, @CMPANYID smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  PRODID, CMPANYID, NC_System_Version, NC_Version_Major, NC_Version_Minor, NC_Version_Build, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, NC_SpareInts_1, NC_SpareInts_2, NC_SpareInts_3, NC_SpareInts_4, NC_SpareInts_5, NC_SpareInts_6, NC_SpareInts_7, NC_SpareInts_8, NC_SpareInts_9, NC_SpareInts_10, DEX_ROW_ID FROM .NCSYS001 WHERE PRODID = @PRODID AND CMPANYID = @CMPANYID ORDER BY PRODID ASC, CMPANYID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCSYS001SS_1] TO [DYNGRP]
GO
