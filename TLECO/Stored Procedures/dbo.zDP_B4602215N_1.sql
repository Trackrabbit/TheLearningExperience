SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602215N_1] (@BS int, @BSSI_Tenant_Lease_Number char(25), @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Not_Proc_Req_Date, BSSI_Not_Pro_Issued_Date, BSSI_Contractor_Approved, BSSI_App_Cont_Name, BSSI_Con_Dra_Rec_Date, BSSI_Con_Dra_app_Date, BSSI_Building_Perm_Rec_D, BSSI_Sch_Ins_Sta_Date, BSSI_Act_Inst_Sta_Date, BSSI_Inst_Compl_Date, BSSI_Comm_Date_Lett_Req, BSSI_Final_Insp_PL_Comp, BSSI_As_Bui_Rec_Field_Da, BSSI_As_Buil_Int_Lib, BSSI_As_Buil_Scann_Date, BSSI_As_Bui_Rev_Date, BSSI_Actual_Height, BSSI_Amm_Req, BSSI_Remove_Date, DEX_ROW_ID, BSSI_Inst_Notes FROM .B4602215 WHERE ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Not_Proc_Req_Date, BSSI_Not_Pro_Issued_Date, BSSI_Contractor_Approved, BSSI_App_Cont_Name, BSSI_Con_Dra_Rec_Date, BSSI_Con_Dra_app_Date, BSSI_Building_Perm_Rec_D, BSSI_Sch_Ins_Sta_Date, BSSI_Act_Inst_Sta_Date, BSSI_Inst_Compl_Date, BSSI_Comm_Date_Lett_Req, BSSI_Final_Insp_PL_Comp, BSSI_As_Bui_Rec_Field_Da, BSSI_As_Buil_Int_Lib, BSSI_As_Buil_Scann_Date, BSSI_As_Bui_Rev_Date, BSSI_Actual_Height, BSSI_Amm_Req, BSSI_Remove_Date, DEX_ROW_ID, BSSI_Inst_Notes FROM .B4602215 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Not_Proc_Req_Date, BSSI_Not_Pro_Issued_Date, BSSI_Contractor_Approved, BSSI_App_Cont_Name, BSSI_Con_Dra_Rec_Date, BSSI_Con_Dra_app_Date, BSSI_Building_Perm_Rec_D, BSSI_Sch_Ins_Sta_Date, BSSI_Act_Inst_Sta_Date, BSSI_Inst_Compl_Date, BSSI_Comm_Date_Lett_Req, BSSI_Final_Insp_PL_Comp, BSSI_As_Bui_Rec_Field_Da, BSSI_As_Buil_Int_Lib, BSSI_As_Buil_Scann_Date, BSSI_As_Bui_Rev_Date, BSSI_Actual_Height, BSSI_Amm_Req, BSSI_Remove_Date, DEX_ROW_ID, BSSI_Inst_Notes FROM .B4602215 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND ( BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602215N_1] TO [DYNGRP]
GO
