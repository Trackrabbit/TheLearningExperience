SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCSYS001SI] (@PRODID smallint, @CMPANYID smallint, @NC_System_Version smallint, @NC_Version_Major smallint, @NC_Version_Minor smallint, @NC_Version_Build smallint, @NC_SpareStrings_1 char(255), @NC_SpareStrings_2 char(255), @NC_SpareStrings_3 char(255), @NC_SpareStrings_4 char(255), @NC_SpareStrings_5 char(255), @NC_SpareInts_1 smallint, @NC_SpareInts_2 smallint, @NC_SpareInts_3 smallint, @NC_SpareInts_4 smallint, @NC_SpareInts_5 smallint, @NC_SpareInts_6 smallint, @NC_SpareInts_7 smallint, @NC_SpareInts_8 smallint, @NC_SpareInts_9 smallint, @NC_SpareInts_10 smallint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .NCSYS001 (PRODID, CMPANYID, NC_System_Version, NC_Version_Major, NC_Version_Minor, NC_Version_Build, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, NC_SpareInts_1, NC_SpareInts_2, NC_SpareInts_3, NC_SpareInts_4, NC_SpareInts_5, NC_SpareInts_6, NC_SpareInts_7, NC_SpareInts_8, NC_SpareInts_9, NC_SpareInts_10) VALUES ( @PRODID, @CMPANYID, @NC_System_Version, @NC_Version_Major, @NC_Version_Minor, @NC_Version_Build, @NC_SpareStrings_1, @NC_SpareStrings_2, @NC_SpareStrings_3, @NC_SpareStrings_4, @NC_SpareStrings_5, @NC_SpareInts_1, @NC_SpareInts_2, @NC_SpareInts_3, @NC_SpareInts_4, @NC_SpareInts_5, @NC_SpareInts_6, @NC_SpareInts_7, @NC_SpareInts_8, @NC_SpareInts_9, @NC_SpareInts_10) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCSYS001SI] TO [DYNGRP]
GO
