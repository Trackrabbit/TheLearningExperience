SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00950N_1] (@BS int, @CUSTNMBR char(15), @ADRSCODE char(15), @CUSTNMBR_RS char(15), @ADRSCODE_RS char(15), @CUSTNMBR_RE char(15), @ADRSCODE_RE char(15)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, WORKDYS_1, WORKDYS_2, WORKDYS_3, WORKDYS_4, WORKDYS_5, WORKDYS_6, WORKDYS_7, WORKSTRT_1, WORKSTRT_2, WORKSTRT_3, WORKSTRT_4, WORKSTRT_5, WORKSTRT_6, WORKSTRT_7, WORKEND_1, WORKEND_2, WORKEND_3, WORKEND_4, WORKEND_5, WORKEND_6, WORKEND_7, LSTSRVDTE, SVCAREA, OFFID, TECHID, TIMEZONE, SRVTYPE, Bill_To_Customer, SVC_Address_Option, SVC_Misc_Address_Code, SVC_PM_Date, SVC_PM_Day, SVC_PM_Allowed, SVC_Allow_Contract_0_SOP, svcPreferredDay_1, svcPreferredDay_2, svcPreferredDay_3, svcPreferredDay_4, svcPreferredDay_5, svcPreferredDay_6, svcPreferredDay_7, svcPreferredStartTime_1, svcPreferredStartTime_2, svcPreferredStartTime_3, svcPreferredStartTime_4, svcPreferredStartTime_5, svcPreferredStartTime_6, svcPreferredStartTime_7, svcPreferredEndTime_1, svcPreferredEndTime_2, svcPreferredEndTime_3, svcPreferredEndTime_4, svcPreferredEndTime_5, svcPreferredEndTime_6, svcPreferredEndTime_7, CNSOLDTD, svcConsolidateContractIn, DEX_ROW_ID FROM .SVC00950 WHERE ( CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, ADRSCODE ASC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, WORKDYS_1, WORKDYS_2, WORKDYS_3, WORKDYS_4, WORKDYS_5, WORKDYS_6, WORKDYS_7, WORKSTRT_1, WORKSTRT_2, WORKSTRT_3, WORKSTRT_4, WORKSTRT_5, WORKSTRT_6, WORKSTRT_7, WORKEND_1, WORKEND_2, WORKEND_3, WORKEND_4, WORKEND_5, WORKEND_6, WORKEND_7, LSTSRVDTE, SVCAREA, OFFID, TECHID, TIMEZONE, SRVTYPE, Bill_To_Customer, SVC_Address_Option, SVC_Misc_Address_Code, SVC_PM_Date, SVC_PM_Day, SVC_PM_Allowed, SVC_Allow_Contract_0_SOP, svcPreferredDay_1, svcPreferredDay_2, svcPreferredDay_3, svcPreferredDay_4, svcPreferredDay_5, svcPreferredDay_6, svcPreferredDay_7, svcPreferredStartTime_1, svcPreferredStartTime_2, svcPreferredStartTime_3, svcPreferredStartTime_4, svcPreferredStartTime_5, svcPreferredStartTime_6, svcPreferredStartTime_7, svcPreferredEndTime_1, svcPreferredEndTime_2, svcPreferredEndTime_3, svcPreferredEndTime_4, svcPreferredEndTime_5, svcPreferredEndTime_6, svcPreferredEndTime_7, CNSOLDTD, svcConsolidateContractIn, DEX_ROW_ID FROM .SVC00950 WHERE CUSTNMBR = @CUSTNMBR_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ( CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, ADRSCODE ASC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, WORKDYS_1, WORKDYS_2, WORKDYS_3, WORKDYS_4, WORKDYS_5, WORKDYS_6, WORKDYS_7, WORKSTRT_1, WORKSTRT_2, WORKSTRT_3, WORKSTRT_4, WORKSTRT_5, WORKSTRT_6, WORKSTRT_7, WORKEND_1, WORKEND_2, WORKEND_3, WORKEND_4, WORKEND_5, WORKEND_6, WORKEND_7, LSTSRVDTE, SVCAREA, OFFID, TECHID, TIMEZONE, SRVTYPE, Bill_To_Customer, SVC_Address_Option, SVC_Misc_Address_Code, SVC_PM_Date, SVC_PM_Day, SVC_PM_Allowed, SVC_Allow_Contract_0_SOP, svcPreferredDay_1, svcPreferredDay_2, svcPreferredDay_3, svcPreferredDay_4, svcPreferredDay_5, svcPreferredDay_6, svcPreferredDay_7, svcPreferredStartTime_1, svcPreferredStartTime_2, svcPreferredStartTime_3, svcPreferredStartTime_4, svcPreferredStartTime_5, svcPreferredStartTime_6, svcPreferredStartTime_7, svcPreferredEndTime_1, svcPreferredEndTime_2, svcPreferredEndTime_3, svcPreferredEndTime_4, svcPreferredEndTime_5, svcPreferredEndTime_6, svcPreferredEndTime_7, CNSOLDTD, svcConsolidateContractIn, DEX_ROW_ID FROM .SVC00950 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ( CUSTNMBR = @CUSTNMBR AND ADRSCODE > @ADRSCODE OR CUSTNMBR > @CUSTNMBR ) ORDER BY CUSTNMBR ASC, ADRSCODE ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00950N_1] TO [DYNGRP]
GO
