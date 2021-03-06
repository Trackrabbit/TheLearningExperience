SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4607001SS_1] (@LOCNCODE char(11)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, BSSI_BTA_Number, BSSI_MTA_NI, BSSI_MTA_Number, BSSI_BTA_NI, BSSI_Tower_Manufacturer, BSSI_Tower_Manufactur_NI, BSSI_Tower_Model, BSSI_Tower_Model_NI, BSSI_Tower_Face_Size, BSSI_Tower_Face_Size_NI, BSSI_Tower_Order_Info, BSSI_Tower_Order_Info_NI, BSSI_As_Build_Capacity_B, BSSI_As_Build_Cap_BBE_NI, BSSI_Used_Capacity_BBE, BSSI_Used_Capacit_BBE_NI, BSSI_Capacity_Left_BBE, BSSI_Capacity_Left_NI, BSSI_Prev_Owner, BSSI_Site_Class_Of_ID, BSSI_MSA, BSSI_MSA_NI, BSSI_Access_Length, BSSI_Access_Length_NI, BSSI_Last_Site_Visit, BSSI_Last_Site_Visit_NI, BSSI_LastStrucPerform_Dt, BSSI_LastStrucPerf_Dt_NI, BSSI_LastStrucMod_Dt, BSSI_LastStrucMod_Dt_NI, BSSI_Ground_Space_SF, BSSI_Compound_Size_SF, BSSI_Shelter_Size_SF, BSSI_Desc_Of_Shelter, BSSI_Space_Used_SF, BSSI_Space_Avail_SF, BSSI_Ground_Space_SF_NI, BSSI_Compound_Size_SF_NI, BSSI_Shelter_Size_SF_NI, BSSI_Desc_Of_Shelter_NI, BSSI_Space_Used_SF_NI, BSSI_Space_Avail_SF_NI, NOTEINDX, DEX_ROW_ID FROM .B4607001 WHERE LOCNCODE = @LOCNCODE ORDER BY LOCNCODE ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4607001SS_1] TO [DYNGRP]
GO
