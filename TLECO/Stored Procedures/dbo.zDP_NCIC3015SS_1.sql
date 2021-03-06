SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3015SS_1] (@USERID char(15), @SQNCLINE numeric(19,5)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, SQNCLINE, NC_Src_IC_Account_Index, CMPANYID, NC_Dest_Account_Index, INTERID, NC_Dest_IC_Account_Index, Remote_Company_ID, Remote_Destination_Accou, Remote_Destination_IC_Ac, NC_Copy_MDA_CB, NC_Reverse_MDA_CB, DEX_ROW_ID FROM .NCIC3015 WHERE USERID = @USERID AND SQNCLINE = @SQNCLINE ORDER BY USERID ASC, SQNCLINE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3015SS_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3015SS_1] TO [public]
GO
