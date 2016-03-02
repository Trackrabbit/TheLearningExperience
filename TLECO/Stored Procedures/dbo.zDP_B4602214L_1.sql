SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602214L_1] (@BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Lan_Con_Rec_Date, BSSI_Lan_Con_Req, BSSI_Lan_Con_Req_Date, BSSI_Lan_Lease_Rev_Date, BSSI_LanNoti_Sent_Date, BSSI_LanNotice_Req, BSSI_ROFR_Exc_Date, BSSI_ROFR_Req, BSSI_ROFR_Ret_Date, BSSI_ROFR_Sent_Out_Date, BSSI_Rev_Share, BSSI_Rev_Share_Per, BSSI_Bus_Ter_Complete_Da, BSSI_One_Time_Colo_Amoun, BSSI_One_Time_Colo_Fee, BSSI_Lease_Requested_Dat, BSSI_Ini_Lease_Draft_Cus, BSSI_Final_Exe_Cus_Date, BSSI_Par_Exe_Cont_Ret_Da, BSSI_Lease_Review_Com_Da, BSSI_Agree_Scanned_Date, DEX_ROW_ID, BSSI_Leasing_Notes FROM .B4602214 ORDER BY BSSI_Tenant_Lease_Number DESC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Lan_Con_Rec_Date, BSSI_Lan_Con_Req, BSSI_Lan_Con_Req_Date, BSSI_Lan_Lease_Rev_Date, BSSI_LanNoti_Sent_Date, BSSI_LanNotice_Req, BSSI_ROFR_Exc_Date, BSSI_ROFR_Req, BSSI_ROFR_Ret_Date, BSSI_ROFR_Sent_Out_Date, BSSI_Rev_Share, BSSI_Rev_Share_Per, BSSI_Bus_Ter_Complete_Da, BSSI_One_Time_Colo_Amoun, BSSI_One_Time_Colo_Fee, BSSI_Lease_Requested_Dat, BSSI_Ini_Lease_Draft_Cus, BSSI_Final_Exe_Cus_Date, BSSI_Par_Exe_Cont_Ret_Da, BSSI_Lease_Review_Com_Da, BSSI_Agree_Scanned_Date, DEX_ROW_ID, BSSI_Leasing_Notes FROM .B4602214 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS ORDER BY BSSI_Tenant_Lease_Number DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Lan_Con_Rec_Date, BSSI_Lan_Con_Req, BSSI_Lan_Con_Req_Date, BSSI_Lan_Lease_Rev_Date, BSSI_LanNoti_Sent_Date, BSSI_LanNotice_Req, BSSI_ROFR_Exc_Date, BSSI_ROFR_Req, BSSI_ROFR_Ret_Date, BSSI_ROFR_Sent_Out_Date, BSSI_Rev_Share, BSSI_Rev_Share_Per, BSSI_Bus_Ter_Complete_Da, BSSI_One_Time_Colo_Amoun, BSSI_One_Time_Colo_Fee, BSSI_Lease_Requested_Dat, BSSI_Ini_Lease_Draft_Cus, BSSI_Final_Exe_Cus_Date, BSSI_Par_Exe_Cont_Ret_Da, BSSI_Lease_Review_Com_Da, BSSI_Agree_Scanned_Date, DEX_ROW_ID, BSSI_Leasing_Notes FROM .B4602214 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE ORDER BY BSSI_Tenant_Lease_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602214L_1] TO [DYNGRP]
GO
