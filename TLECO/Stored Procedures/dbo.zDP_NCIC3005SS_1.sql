SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3005SS_1] (@NC_Source_Company_ID smallint, @NC_Src_IC_Account_Index int) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  NC_Source_Company_ID, CMPANYID, NC_Src_IC_Account_Index, NC_Dest_IC_Account_Index, NC_Copy_MDA_CB, NC_Reverse_MDA_CB, Remote_Company_ID, Remote_Destination_Accou, Remote_Destination_IC_Ac, DEX_ROW_ID FROM .NCIC3005 WHERE NC_Source_Company_ID = @NC_Source_Company_ID AND NC_Src_IC_Account_Index = @NC_Src_IC_Account_Index ORDER BY NC_Source_Company_ID ASC, NC_Src_IC_Account_Index ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3005SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3005SS_1] TO [public]
GO
