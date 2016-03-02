SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100989F_2] (@DEX_ROW_ID_RS int, @DEX_ROW_ID_RE int) AS /* 12.00.0270.000 */ set nocount on IF @DEX_ROW_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Or_Company_ID, ACTNUMST, INTERID, BSSI_DefAccountNumberStr, CURNCYID, DOCAMNT, EXCHDATE, BSSI_ScheduleBasedOnDate, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_Frequency, BSSI_RecogAcctNumberStri, BSSI_Recog_TemplateID, USERID, BSSI_Custom_Field_Name_1, BSSI_Custom_Field_Name_2, BSSI_Custom_Field_Name_3, BSSI_Custom_Field_Name_4, BSSI_Custom_Field_Name_5, BSSI_Custom_Field_Name_6, BSSI_Custom_Field_Name_7, BSSI_Custom_Field_Name_8, BSSI_Custom_Field_Name_9, BSSI_Custom_Field_Name_10, BSSI_Custom_Field_Name_11, BSSI_Custom_Field_Name_12, BSSI_Custom_Field_Name_13, BSSI_Custom_Field_Name_14, BSSI_Custom_Field_Name_15, BSSI_Custom_Field_Name_16, BSSI_Custom_Field_Name_17, BSSI_Custom_Field_Name_18, BSSI_Custom_Field_Name_19, BSSI_Custom_Field_Name_20, BSSI_Custom_Field_Name_21, BSSI_Custom_Field_Name_22, BSSI_Custom_Field_Name_23, BSSI_Custom_Field_Name_24, BSSI_Custom_Field_Name_25, BSSI_Custom_Field_Name_26, BSSI_Custom_Field_Name_27, BSSI_Custom_Field_Name_28, BSSI_Custom_Field_Name_29, BSSI_Custom_Field_Name_30, BSSI_Custom_Field_Name_31, BSSI_Custom_Field_Name_32, BSSI_Custom_Field_Name_33, BSSI_Custom_Field_Name_34, BSSI_Custom_Field_Name_35, BSSI_Custom_Field_Name_36, BSSI_Custom_Field_Name_37, BSSI_Custom_Field_Name_38, BSSI_Custom_Field_Name_39, BSSI_Custom_Field_Name_40, BSSI_Custom_Field_Name_41, BSSI_Custom_Field_Name_42, BSSI_Custom_Field_Name_43, BSSI_Custom_Field_Name_44, BSSI_Custom_Field_Name_45, BSSI_Custom_Field_Name_46, BSSI_Custom_Field_Name_47, BSSI_Custom_Field_Name_48, BSSI_Custom_Field_Name_49, BSSI_Custom_Field_Name_50, BSSI_bError, DEX_ROW_ID FROM .B7100989 ORDER BY DEX_ROW_ID ASC END ELSE IF @DEX_ROW_ID_RS = @DEX_ROW_ID_RE BEGIN SELECT TOP 25  BSSI_Or_Company_ID, ACTNUMST, INTERID, BSSI_DefAccountNumberStr, CURNCYID, DOCAMNT, EXCHDATE, BSSI_ScheduleBasedOnDate, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_Frequency, BSSI_RecogAcctNumberStri, BSSI_Recog_TemplateID, USERID, BSSI_Custom_Field_Name_1, BSSI_Custom_Field_Name_2, BSSI_Custom_Field_Name_3, BSSI_Custom_Field_Name_4, BSSI_Custom_Field_Name_5, BSSI_Custom_Field_Name_6, BSSI_Custom_Field_Name_7, BSSI_Custom_Field_Name_8, BSSI_Custom_Field_Name_9, BSSI_Custom_Field_Name_10, BSSI_Custom_Field_Name_11, BSSI_Custom_Field_Name_12, BSSI_Custom_Field_Name_13, BSSI_Custom_Field_Name_14, BSSI_Custom_Field_Name_15, BSSI_Custom_Field_Name_16, BSSI_Custom_Field_Name_17, BSSI_Custom_Field_Name_18, BSSI_Custom_Field_Name_19, BSSI_Custom_Field_Name_20, BSSI_Custom_Field_Name_21, BSSI_Custom_Field_Name_22, BSSI_Custom_Field_Name_23, BSSI_Custom_Field_Name_24, BSSI_Custom_Field_Name_25, BSSI_Custom_Field_Name_26, BSSI_Custom_Field_Name_27, BSSI_Custom_Field_Name_28, BSSI_Custom_Field_Name_29, BSSI_Custom_Field_Name_30, BSSI_Custom_Field_Name_31, BSSI_Custom_Field_Name_32, BSSI_Custom_Field_Name_33, BSSI_Custom_Field_Name_34, BSSI_Custom_Field_Name_35, BSSI_Custom_Field_Name_36, BSSI_Custom_Field_Name_37, BSSI_Custom_Field_Name_38, BSSI_Custom_Field_Name_39, BSSI_Custom_Field_Name_40, BSSI_Custom_Field_Name_41, BSSI_Custom_Field_Name_42, BSSI_Custom_Field_Name_43, BSSI_Custom_Field_Name_44, BSSI_Custom_Field_Name_45, BSSI_Custom_Field_Name_46, BSSI_Custom_Field_Name_47, BSSI_Custom_Field_Name_48, BSSI_Custom_Field_Name_49, BSSI_Custom_Field_Name_50, BSSI_bError, DEX_ROW_ID FROM .B7100989 WHERE DEX_ROW_ID = @DEX_ROW_ID_RS ORDER BY DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Or_Company_ID, ACTNUMST, INTERID, BSSI_DefAccountNumberStr, CURNCYID, DOCAMNT, EXCHDATE, BSSI_ScheduleBasedOnDate, BSSI_DeferralStartDate, BSSI_DeferralEndDate, BSSI_Recog_Frequency, BSSI_RecogAcctNumberStri, BSSI_Recog_TemplateID, USERID, BSSI_Custom_Field_Name_1, BSSI_Custom_Field_Name_2, BSSI_Custom_Field_Name_3, BSSI_Custom_Field_Name_4, BSSI_Custom_Field_Name_5, BSSI_Custom_Field_Name_6, BSSI_Custom_Field_Name_7, BSSI_Custom_Field_Name_8, BSSI_Custom_Field_Name_9, BSSI_Custom_Field_Name_10, BSSI_Custom_Field_Name_11, BSSI_Custom_Field_Name_12, BSSI_Custom_Field_Name_13, BSSI_Custom_Field_Name_14, BSSI_Custom_Field_Name_15, BSSI_Custom_Field_Name_16, BSSI_Custom_Field_Name_17, BSSI_Custom_Field_Name_18, BSSI_Custom_Field_Name_19, BSSI_Custom_Field_Name_20, BSSI_Custom_Field_Name_21, BSSI_Custom_Field_Name_22, BSSI_Custom_Field_Name_23, BSSI_Custom_Field_Name_24, BSSI_Custom_Field_Name_25, BSSI_Custom_Field_Name_26, BSSI_Custom_Field_Name_27, BSSI_Custom_Field_Name_28, BSSI_Custom_Field_Name_29, BSSI_Custom_Field_Name_30, BSSI_Custom_Field_Name_31, BSSI_Custom_Field_Name_32, BSSI_Custom_Field_Name_33, BSSI_Custom_Field_Name_34, BSSI_Custom_Field_Name_35, BSSI_Custom_Field_Name_36, BSSI_Custom_Field_Name_37, BSSI_Custom_Field_Name_38, BSSI_Custom_Field_Name_39, BSSI_Custom_Field_Name_40, BSSI_Custom_Field_Name_41, BSSI_Custom_Field_Name_42, BSSI_Custom_Field_Name_43, BSSI_Custom_Field_Name_44, BSSI_Custom_Field_Name_45, BSSI_Custom_Field_Name_46, BSSI_Custom_Field_Name_47, BSSI_Custom_Field_Name_48, BSSI_Custom_Field_Name_49, BSSI_Custom_Field_Name_50, BSSI_bError, DEX_ROW_ID FROM .B7100989 WHERE DEX_ROW_ID BETWEEN @DEX_ROW_ID_RS AND @DEX_ROW_ID_RE ORDER BY DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100989F_2] TO [DYNGRP]
GO
