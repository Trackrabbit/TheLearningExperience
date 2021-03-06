SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603900SS_2] (@BSSI_Work__Order_Referan char(51)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Amenity_ID, BSSI_Work_Order_Number, BSSI_Next_Work_Order_Num, BSSI_Description, BSSI_PortfolioID, BSSI_Contact_ID, BSSI_Address_Option, LOCNCODE, BSSI_Priority_Code_ID, BSSI_Maintenance_Code_ID, BSSI_Provider_Type, BSSI_Equipment_ID, BSSI_Equipment_Origin, BSSI_Tenant_Lease_Number, USER2ENT, DATE1, TIME1, BSSI_Work__Order_Referan, BSSI_Work_Order_Status, BSSI_Is_Signed_Off, BSSI_Date_Signed_Off, BSSI_Provider_ID, BSSI_Scheduled_Date, BSSI_Issued_Date, BSSI_Estimated_Cost, BSSI_Estimated_Effort, BSSI_Actual_Cost, BSSI_Actual_Effort, BSSI_Billed_Cost, NOTEINDX, SERLNMBR, ITEMNMBR, BSSI_Index, BSSI_Lease_Origin, BSSI_Asset_Suffix, BSSI_Facility_ID, BSSI_Department_ID, DEX_ROW_ID, BSSI_Work_Required, BSSI_Work_Performed, BSSI_Acknowledgement FROM .B4603900 WHERE BSSI_Work__Order_Referan = @BSSI_Work__Order_Referan ORDER BY BSSI_Work__Order_Referan ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603900SS_2] TO [DYNGRP]
GO
