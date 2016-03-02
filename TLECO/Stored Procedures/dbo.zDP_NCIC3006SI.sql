SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3006SI] (@JRNENTRY int, @Xfr_Record_Number numeric(19,5), @CMDNUMWK numeric(19,5), @VOIDED tinyint, @VCHRNMBR char(21), @RMDNUMWK char(17), @DOCTYPE smallint, @SQNCLINE numeric(19,5), @NC_Src_IC_Account_Index int, @CMPANYID smallint, @NC_Dest_Account_Index int, @NC_Dest_IC_Account_Index int, @Remote_Company_ID char(5), @Remote_Destination_Accou char(129), @Remote_Destination_IC_Ac char(129), @NC_Copy_MDA_CB tinyint, @NC_Reverse_MDA_CB tinyint, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .NCIC3006 (JRNENTRY, Xfr_Record_Number, CMDNUMWK, VOIDED, VCHRNMBR, RMDNUMWK, DOCTYPE, SQNCLINE, NC_Src_IC_Account_Index, CMPANYID, NC_Dest_Account_Index, NC_Dest_IC_Account_Index, Remote_Company_ID, Remote_Destination_Accou, Remote_Destination_IC_Ac, NC_Copy_MDA_CB, NC_Reverse_MDA_CB) VALUES ( @JRNENTRY, @Xfr_Record_Number, @CMDNUMWK, @VOIDED, @VCHRNMBR, @RMDNUMWK, @DOCTYPE, @SQNCLINE, @NC_Src_IC_Account_Index, @CMPANYID, @NC_Dest_Account_Index, @NC_Dest_IC_Account_Index, @Remote_Company_ID, @Remote_Destination_Accou, @Remote_Destination_IC_Ac, @NC_Copy_MDA_CB, @NC_Reverse_MDA_CB) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3006SI] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3006SI] TO [public]
GO
