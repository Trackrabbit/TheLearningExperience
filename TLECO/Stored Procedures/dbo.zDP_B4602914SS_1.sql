SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602914SS_1] (@BSSI_Ground_Lease_Number char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Ground_Lease_Number, BSSI_LanNotice_Req, BSSI_Lan_Con_Req, BSSI_ROFR_Req, BSSI_Rev_Share, BSSI_Date_Req_Lease_Draf, BSSI_Date_Terms_Received, BSSI_Date_LL_Initial_Dra, BSSI_Date_LL_Final_Groun, BSSI_Date_LL_Signed, BSSI_Date_Received, BSSI_Date_Lease_Review_C, BSSI_Date_Submitted_Exec, BSSI_Date_Agreement_Scan, BSSI_Date_Entered_Option, BSSI_Date_1st_Option_Exp, BSSI_1st_Option_Money, BSSI_Date_1st_Option_Pai, BSSI_Date_2nd_Option_Exp, BSSI_2nd_Option_Money, BSSI_Date_2nd_Option_Pai, BSSI_Date_Ground_Rent_Be, BSSI_W9_Received, BSSI_W9_Recieved_Date, DEX_ROW_ID, BSSI_Rev_Sharing_Terms_A, BSSI_Leasing_Notes, BSSI_Date_Ground_Rent_BN FROM .B4602914 WHERE BSSI_Ground_Lease_Number = @BSSI_Ground_Lease_Number ORDER BY BSSI_Ground_Lease_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602914SS_1] TO [DYNGRP]
GO
