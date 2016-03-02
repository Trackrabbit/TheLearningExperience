SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3005L_1] (@NC_Source_Company_ID_RS smallint, @NC_Src_IC_Account_Index_RS int, @NC_Source_Company_ID_RE smallint, @NC_Src_IC_Account_Index_RE int) AS /* 14.00.0084.000 */ set nocount on IF @NC_Source_Company_ID_RS IS NULL BEGIN SELECT TOP 25  NC_Source_Company_ID, CMPANYID, NC_Src_IC_Account_Index, NC_Dest_IC_Account_Index, NC_Copy_MDA_CB, NC_Reverse_MDA_CB, Remote_Company_ID, Remote_Destination_Accou, Remote_Destination_IC_Ac, DEX_ROW_ID FROM .NCIC3005 ORDER BY NC_Source_Company_ID DESC, NC_Src_IC_Account_Index DESC END ELSE IF @NC_Source_Company_ID_RS = @NC_Source_Company_ID_RE BEGIN SELECT TOP 25  NC_Source_Company_ID, CMPANYID, NC_Src_IC_Account_Index, NC_Dest_IC_Account_Index, NC_Copy_MDA_CB, NC_Reverse_MDA_CB, Remote_Company_ID, Remote_Destination_Accou, Remote_Destination_IC_Ac, DEX_ROW_ID FROM .NCIC3005 WHERE NC_Source_Company_ID = @NC_Source_Company_ID_RS AND NC_Src_IC_Account_Index BETWEEN @NC_Src_IC_Account_Index_RS AND @NC_Src_IC_Account_Index_RE ORDER BY NC_Source_Company_ID DESC, NC_Src_IC_Account_Index DESC END ELSE BEGIN SELECT TOP 25  NC_Source_Company_ID, CMPANYID, NC_Src_IC_Account_Index, NC_Dest_IC_Account_Index, NC_Copy_MDA_CB, NC_Reverse_MDA_CB, Remote_Company_ID, Remote_Destination_Accou, Remote_Destination_IC_Ac, DEX_ROW_ID FROM .NCIC3005 WHERE NC_Source_Company_ID BETWEEN @NC_Source_Company_ID_RS AND @NC_Source_Company_ID_RE AND NC_Src_IC_Account_Index BETWEEN @NC_Src_IC_Account_Index_RS AND @NC_Src_IC_Account_Index_RE ORDER BY NC_Source_Company_ID DESC, NC_Src_IC_Account_Index DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3005L_1] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3005L_1] TO [public]
GO
