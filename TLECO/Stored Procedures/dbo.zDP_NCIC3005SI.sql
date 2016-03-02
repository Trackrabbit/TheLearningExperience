SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3005SI] (@NC_Source_Company_ID smallint, @CMPANYID smallint, @NC_Src_IC_Account_Index int, @NC_Dest_IC_Account_Index int, @NC_Copy_MDA_CB tinyint, @NC_Reverse_MDA_CB tinyint, @Remote_Company_ID char(5), @Remote_Destination_Accou char(129), @Remote_Destination_IC_Ac char(129), @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC3005 (NC_Source_Company_ID, CMPANYID, NC_Src_IC_Account_Index, NC_Dest_IC_Account_Index, NC_Copy_MDA_CB, NC_Reverse_MDA_CB, Remote_Company_ID, Remote_Destination_Accou, Remote_Destination_IC_Ac) VALUES ( @NC_Source_Company_ID, @CMPANYID, @NC_Src_IC_Account_Index, @NC_Dest_IC_Account_Index, @NC_Copy_MDA_CB, @NC_Reverse_MDA_CB, @Remote_Company_ID, @Remote_Destination_Accou, @Remote_Destination_IC_Ac) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3005SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3005SI] TO [public]
GO
