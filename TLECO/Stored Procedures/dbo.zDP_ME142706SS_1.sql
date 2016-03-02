SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME142706SS_1] (@CMPANYID smallint) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  CMPANYID, ME_Verification_Source, ME_Merchant_Name, MEREQFPTH, MEANSFPTH, MEICVEVAL, ME_Default_Address_ID, MEADDCONF, ME_Validate_ZipCode, ME_Ecommerce_Type, MEDNDB, MEHISTKP, MEPRICARC, MEMCID, ME_Virtual_Workstation_P, ME_Registered_Workstatio, ME_Reserved_Workstations, ME_Virtual_WS_Wait_Time, MERECPROCDT, MERECPROTM, ME_Processor, ME_Book_Valid_For_Days, ME_Auto_Add_Freight, ME_Add_Freight_To_Docume, ME_Freight_Amount, ME_Freight_Percent, ME_Auto_Add_Misc, ME_Add_Misc_To_Document, ME_Misc_Amount, ME_Misc_Percent, USERDATE, USERID, NOTEINDX, ME_Book_Equal_Ship, ME_ReqAns_Log, ME_TimeOut, DEX_ROW_ID FROM .ME142706 WHERE CMPANYID = @CMPANYID ORDER BY CMPANYID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME142706SS_1] TO [DYNGRP]
GO
