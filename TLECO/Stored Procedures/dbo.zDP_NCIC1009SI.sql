SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC1009SI] (@NC_Trigger_Account_Index int, @SOURCDOC char(11), @NC_Post_IC_TRX_1 tinyint, @NC_Post_IC_TRX_2 tinyint, @NC_Post_IC_TRX_3 tinyint, @NC_Post_IC_TRX_4 tinyint, @NC_Post_IC_TRX_5 tinyint, @NC_SpareBools_1 tinyint, @NC_SpareBools_2 tinyint, @NC_SpareBools_3 tinyint, @NC_SpareBools_4 tinyint, @NC_SpareBools_5 tinyint, @NC_SpareInts_1 smallint, @NC_SpareInts_2 smallint, @NC_SpareInts_3 smallint, @NC_SpareInts_4 smallint, @NC_SpareInts_5 smallint, @NC_SpareInts_6 smallint, @NC_SpareInts_7 smallint, @NC_SpareInts_8 smallint, @NC_SpareInts_9 smallint, @NC_SpareInts_10 smallint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC1009 (NC_Trigger_Account_Index, SOURCDOC, NC_Post_IC_TRX_1, NC_Post_IC_TRX_2, NC_Post_IC_TRX_3, NC_Post_IC_TRX_4, NC_Post_IC_TRX_5, NC_SpareBools_1, NC_SpareBools_2, NC_SpareBools_3, NC_SpareBools_4, NC_SpareBools_5, NC_SpareInts_1, NC_SpareInts_2, NC_SpareInts_3, NC_SpareInts_4, NC_SpareInts_5, NC_SpareInts_6, NC_SpareInts_7, NC_SpareInts_8, NC_SpareInts_9, NC_SpareInts_10) VALUES ( @NC_Trigger_Account_Index, @SOURCDOC, @NC_Post_IC_TRX_1, @NC_Post_IC_TRX_2, @NC_Post_IC_TRX_3, @NC_Post_IC_TRX_4, @NC_Post_IC_TRX_5, @NC_SpareBools_1, @NC_SpareBools_2, @NC_SpareBools_3, @NC_SpareBools_4, @NC_SpareBools_5, @NC_SpareInts_1, @NC_SpareInts_2, @NC_SpareInts_3, @NC_SpareInts_4, @NC_SpareInts_5, @NC_SpareInts_6, @NC_SpareInts_7, @NC_SpareInts_8, @NC_SpareInts_9, @NC_SpareInts_10) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1009SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC1009SI] TO [public]
GO
