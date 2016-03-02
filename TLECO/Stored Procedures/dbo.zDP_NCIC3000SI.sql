SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3000SI] (@CMRECNUM numeric(19,5), @NC_Process_Templates tinyint, @NC_FunctionalOriginating smallint, @NC_Export_FileName char(255), @NC_Dest_Accs_Required tinyint, @NC_SpareInts_1 smallint, @NC_SpareInts_2 smallint, @NC_SpareInts_3 smallint, @NC_SpareInts_4 smallint, @NC_SpareInts_5 smallint, @NC_SpareInts_6 smallint, @NC_SpareInts_7 smallint, @NC_SpareInts_8 smallint, @NC_SpareInts_9 smallint, @NC_SpareInts_10 smallint, @NC_SpareStrings_1 char(255), @NC_SpareStrings_2 char(255), @NC_SpareStrings_3 char(255), @NC_SpareStrings_4 char(255), @NC_SpareStrings_5 char(255), @NC_SpareBools_1 tinyint, @NC_SpareBools_2 tinyint, @NC_SpareBools_3 tinyint, @NC_SpareBools_4 tinyint, @NC_SpareBools_5 tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC3000 (CMRECNUM, NC_Process_Templates, NC_FunctionalOriginating, NC_Export_FileName, NC_Dest_Accs_Required, NC_SpareInts_1, NC_SpareInts_2, NC_SpareInts_3, NC_SpareInts_4, NC_SpareInts_5, NC_SpareInts_6, NC_SpareInts_7, NC_SpareInts_8, NC_SpareInts_9, NC_SpareInts_10, NC_SpareStrings_1, NC_SpareStrings_2, NC_SpareStrings_3, NC_SpareStrings_4, NC_SpareStrings_5, NC_SpareBools_1, NC_SpareBools_2, NC_SpareBools_3, NC_SpareBools_4, NC_SpareBools_5) VALUES ( @CMRECNUM, @NC_Process_Templates, @NC_FunctionalOriginating, @NC_Export_FileName, @NC_Dest_Accs_Required, @NC_SpareInts_1, @NC_SpareInts_2, @NC_SpareInts_3, @NC_SpareInts_4, @NC_SpareInts_5, @NC_SpareInts_6, @NC_SpareInts_7, @NC_SpareInts_8, @NC_SpareInts_9, @NC_SpareInts_10, @NC_SpareStrings_1, @NC_SpareStrings_2, @NC_SpareStrings_3, @NC_SpareStrings_4, @NC_SpareStrings_5, @NC_SpareBools_1, @NC_SpareBools_2, @NC_SpareBools_3, @NC_SpareBools_4, @NC_SpareBools_5) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3000SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3000SI] TO [public]
GO
