SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCSYS001L_1] (@PRODID_RS smallint, @CMPANYID_RS smallint, @PRODID_RE smallint, @CMPANYID_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, CMPANYID, NC_System_Version, NC_Version_Major, NC_Version_Minor, NC_Version_Build, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, NC_SpareInts_1, NC_SpareInts_2, NC_SpareInts_3, NC_SpareInts_4, NC_SpareInts_5, NC_SpareInts_6, NC_SpareInts_7, NC_SpareInts_8, NC_SpareInts_9, NC_SpareInts_10, DEX_ROW_ID FROM .NCSYS001 ORDER BY PRODID DESC, CMPANYID DESC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, CMPANYID, NC_System_Version, NC_Version_Major, NC_Version_Minor, NC_Version_Build, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, NC_SpareInts_1, NC_SpareInts_2, NC_SpareInts_3, NC_SpareInts_4, NC_SpareInts_5, NC_SpareInts_6, NC_SpareInts_7, NC_SpareInts_8, NC_SpareInts_9, NC_SpareInts_10, DEX_ROW_ID FROM .NCSYS001 WHERE PRODID = @PRODID_RS AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE ORDER BY PRODID DESC, CMPANYID DESC END ELSE BEGIN SELECT TOP 25  PRODID, CMPANYID, NC_System_Version, NC_Version_Major, NC_Version_Minor, NC_Version_Build, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, NC_SpareInts_1, NC_SpareInts_2, NC_SpareInts_3, NC_SpareInts_4, NC_SpareInts_5, NC_SpareInts_6, NC_SpareInts_7, NC_SpareInts_8, NC_SpareInts_9, NC_SpareInts_10, DEX_ROW_ID FROM .NCSYS001 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE ORDER BY PRODID DESC, CMPANYID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCSYS001L_1] TO [DYNGRP]
GO