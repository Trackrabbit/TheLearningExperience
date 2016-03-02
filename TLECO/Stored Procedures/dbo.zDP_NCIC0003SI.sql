SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC0003SI] (@NC_Source_Company_ID smallint, @NC_Trigger_Account_Index int, @NC_Src_Account_Index int, @NC_Src_IC_Account_Index int, @CMPANYID smallint, @NC_Dest_Account_Index int, @NC_Dest_IC_Account_Index int, @NC_Copy_MDA_CB tinyint, @NC_Reverse_MDA_CB tinyint, @Remote_Company_ID char(5), @Remote_Destination_Accou char(129), @Remote_Destination_IC_Ac char(129), @STRGA255 char(255), @STRGB255 char(255), @STRNG132 char(133), @IntegerValue smallint, @DATE1 datetime, @CURRVAL numeric(19,5), @DOLRAMNT numeric(19,5), @NC_Intracompany tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC0003 (NC_Source_Company_ID, NC_Trigger_Account_Index, NC_Src_Account_Index, NC_Src_IC_Account_Index, CMPANYID, NC_Dest_Account_Index, NC_Dest_IC_Account_Index, NC_Copy_MDA_CB, NC_Reverse_MDA_CB, Remote_Company_ID, Remote_Destination_Accou, Remote_Destination_IC_Ac, STRGA255, STRGB255, STRNG132, IntegerValue, DATE1, CURRVAL, DOLRAMNT, NC_Intracompany) VALUES ( @NC_Source_Company_ID, @NC_Trigger_Account_Index, @NC_Src_Account_Index, @NC_Src_IC_Account_Index, @CMPANYID, @NC_Dest_Account_Index, @NC_Dest_IC_Account_Index, @NC_Copy_MDA_CB, @NC_Reverse_MDA_CB, @Remote_Company_ID, @Remote_Destination_Accou, @Remote_Destination_IC_Ac, @STRGA255, @STRGB255, @STRNG132, @IntegerValue, @DATE1, @CURRVAL, @DOLRAMNT, @NC_Intracompany) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC0003SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC0003SI] TO [public]
GO
