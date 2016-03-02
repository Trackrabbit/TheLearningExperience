SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000100N_1] (@BS int, @BSSI_Window_Name smallint, @BSSI_Window_Name_RS smallint, @BSSI_Window_Name_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Window_Name_RS IS NULL BEGIN SELECT TOP 25  BSSI_Window_Name, BSSI_User_Def_Field_1, BSSI_User_Def_Field_2, BSSI_User_Def_Field_3, BSSI_User_Def_Field_4, BSSI_User_Def_Field_5, BSSI_User_Def_Field_6, BSSI_User_Def_Field_7, BSSI_User_Def_Field_8, BSSI_User_Def_Field_9, BSSI_User_Def_Field_10, BSSI_User_Def_Field_11, BSSI_User_Def_Field_12, BSSI_User_Def_Field_13, BSSI_User_Def_Field_14, BSSI_User_Def_Field_15, BSSI_User_Def_Field_16, BSSI_User_Def_Field_17, BSSI_User_Def_Field_18, BSSI_User_Def_Field_19, BSSI_User_Def_Field_20, BSSI_User_Def_Field_21, BSSI_User_Def_Field_22, BSSI_User_Def_Field_23, BSSI_User_Def_Field_24, BSSI_User_Def_Field_25, BSSI_User_Def_Field_26, BSSI_User_Def_Field_27, BSSI_User_Def_Field_28, BSSI_User_Def_Field_29, BSSI_User_Def_Field_30, BSSI_User_Def_Field_31, BSSI_User_Def_Field_32, BSSI_User_Def_Field_33, BSSI_User_Def_Field_34, BSSI_User_Def_Field_35, BSSI_User_Def_Field_36, BSSI_User_Def_Field_37, BSSI_User_Def_Field_38, BSSI_User_Def_Field_39, BSSI_User_Def_Field_40, BSSI_User_Def_Type_1, BSSI_User_Def_Type_2, BSSI_User_Def_Type_3, BSSI_User_Def_Type_4, BSSI_User_Def_Type_5, BSSI_User_Def_Type_6, BSSI_User_Def_Type_7, BSSI_User_Def_Type_8, BSSI_User_Def_Type_9, BSSI_User_Def_Type_10, BSSI_User_Def_Type_11, BSSI_User_Def_Type_12, BSSI_User_Def_Type_13, BSSI_User_Def_Type_14, BSSI_User_Def_Type_15, BSSI_User_Def_Type_16, BSSI_User_Def_Type_17, BSSI_User_Def_Type_18, BSSI_User_Def_Type_19, BSSI_User_Def_Type_20, BSSI_User_Def_Type_21, BSSI_User_Def_Type_22, BSSI_User_Def_Type_23, BSSI_User_Def_Type_24, BSSI_User_Def_Type_25, BSSI_User_Def_Type_26, BSSI_User_Def_Type_27, BSSI_User_Def_Type_28, BSSI_User_Def_Type_29, BSSI_User_Def_Type_30, BSSI_User_Def_Type_31, BSSI_User_Def_Type_32, BSSI_User_Def_Type_33, BSSI_User_Def_Type_34, BSSI_User_Def_Type_35, BSSI_User_Def_Type_36, BSSI_User_Def_Type_37, BSSI_User_Def_Type_38, BSSI_User_Def_Type_39, BSSI_User_Def_Type_40, DEX_ROW_ID FROM .B9000100 WHERE ( BSSI_Window_Name > @BSSI_Window_Name ) ORDER BY BSSI_Window_Name ASC END ELSE IF @BSSI_Window_Name_RS = @BSSI_Window_Name_RE BEGIN SELECT TOP 25  BSSI_Window_Name, BSSI_User_Def_Field_1, BSSI_User_Def_Field_2, BSSI_User_Def_Field_3, BSSI_User_Def_Field_4, BSSI_User_Def_Field_5, BSSI_User_Def_Field_6, BSSI_User_Def_Field_7, BSSI_User_Def_Field_8, BSSI_User_Def_Field_9, BSSI_User_Def_Field_10, BSSI_User_Def_Field_11, BSSI_User_Def_Field_12, BSSI_User_Def_Field_13, BSSI_User_Def_Field_14, BSSI_User_Def_Field_15, BSSI_User_Def_Field_16, BSSI_User_Def_Field_17, BSSI_User_Def_Field_18, BSSI_User_Def_Field_19, BSSI_User_Def_Field_20, BSSI_User_Def_Field_21, BSSI_User_Def_Field_22, BSSI_User_Def_Field_23, BSSI_User_Def_Field_24, BSSI_User_Def_Field_25, BSSI_User_Def_Field_26, BSSI_User_Def_Field_27, BSSI_User_Def_Field_28, BSSI_User_Def_Field_29, BSSI_User_Def_Field_30, BSSI_User_Def_Field_31, BSSI_User_Def_Field_32, BSSI_User_Def_Field_33, BSSI_User_Def_Field_34, BSSI_User_Def_Field_35, BSSI_User_Def_Field_36, BSSI_User_Def_Field_37, BSSI_User_Def_Field_38, BSSI_User_Def_Field_39, BSSI_User_Def_Field_40, BSSI_User_Def_Type_1, BSSI_User_Def_Type_2, BSSI_User_Def_Type_3, BSSI_User_Def_Type_4, BSSI_User_Def_Type_5, BSSI_User_Def_Type_6, BSSI_User_Def_Type_7, BSSI_User_Def_Type_8, BSSI_User_Def_Type_9, BSSI_User_Def_Type_10, BSSI_User_Def_Type_11, BSSI_User_Def_Type_12, BSSI_User_Def_Type_13, BSSI_User_Def_Type_14, BSSI_User_Def_Type_15, BSSI_User_Def_Type_16, BSSI_User_Def_Type_17, BSSI_User_Def_Type_18, BSSI_User_Def_Type_19, BSSI_User_Def_Type_20, BSSI_User_Def_Type_21, BSSI_User_Def_Type_22, BSSI_User_Def_Type_23, BSSI_User_Def_Type_24, BSSI_User_Def_Type_25, BSSI_User_Def_Type_26, BSSI_User_Def_Type_27, BSSI_User_Def_Type_28, BSSI_User_Def_Type_29, BSSI_User_Def_Type_30, BSSI_User_Def_Type_31, BSSI_User_Def_Type_32, BSSI_User_Def_Type_33, BSSI_User_Def_Type_34, BSSI_User_Def_Type_35, BSSI_User_Def_Type_36, BSSI_User_Def_Type_37, BSSI_User_Def_Type_38, BSSI_User_Def_Type_39, BSSI_User_Def_Type_40, DEX_ROW_ID FROM .B9000100 WHERE BSSI_Window_Name = @BSSI_Window_Name_RS AND ( BSSI_Window_Name > @BSSI_Window_Name ) ORDER BY BSSI_Window_Name ASC END ELSE BEGIN SELECT TOP 25  BSSI_Window_Name, BSSI_User_Def_Field_1, BSSI_User_Def_Field_2, BSSI_User_Def_Field_3, BSSI_User_Def_Field_4, BSSI_User_Def_Field_5, BSSI_User_Def_Field_6, BSSI_User_Def_Field_7, BSSI_User_Def_Field_8, BSSI_User_Def_Field_9, BSSI_User_Def_Field_10, BSSI_User_Def_Field_11, BSSI_User_Def_Field_12, BSSI_User_Def_Field_13, BSSI_User_Def_Field_14, BSSI_User_Def_Field_15, BSSI_User_Def_Field_16, BSSI_User_Def_Field_17, BSSI_User_Def_Field_18, BSSI_User_Def_Field_19, BSSI_User_Def_Field_20, BSSI_User_Def_Field_21, BSSI_User_Def_Field_22, BSSI_User_Def_Field_23, BSSI_User_Def_Field_24, BSSI_User_Def_Field_25, BSSI_User_Def_Field_26, BSSI_User_Def_Field_27, BSSI_User_Def_Field_28, BSSI_User_Def_Field_29, BSSI_User_Def_Field_30, BSSI_User_Def_Field_31, BSSI_User_Def_Field_32, BSSI_User_Def_Field_33, BSSI_User_Def_Field_34, BSSI_User_Def_Field_35, BSSI_User_Def_Field_36, BSSI_User_Def_Field_37, BSSI_User_Def_Field_38, BSSI_User_Def_Field_39, BSSI_User_Def_Field_40, BSSI_User_Def_Type_1, BSSI_User_Def_Type_2, BSSI_User_Def_Type_3, BSSI_User_Def_Type_4, BSSI_User_Def_Type_5, BSSI_User_Def_Type_6, BSSI_User_Def_Type_7, BSSI_User_Def_Type_8, BSSI_User_Def_Type_9, BSSI_User_Def_Type_10, BSSI_User_Def_Type_11, BSSI_User_Def_Type_12, BSSI_User_Def_Type_13, BSSI_User_Def_Type_14, BSSI_User_Def_Type_15, BSSI_User_Def_Type_16, BSSI_User_Def_Type_17, BSSI_User_Def_Type_18, BSSI_User_Def_Type_19, BSSI_User_Def_Type_20, BSSI_User_Def_Type_21, BSSI_User_Def_Type_22, BSSI_User_Def_Type_23, BSSI_User_Def_Type_24, BSSI_User_Def_Type_25, BSSI_User_Def_Type_26, BSSI_User_Def_Type_27, BSSI_User_Def_Type_28, BSSI_User_Def_Type_29, BSSI_User_Def_Type_30, BSSI_User_Def_Type_31, BSSI_User_Def_Type_32, BSSI_User_Def_Type_33, BSSI_User_Def_Type_34, BSSI_User_Def_Type_35, BSSI_User_Def_Type_36, BSSI_User_Def_Type_37, BSSI_User_Def_Type_38, BSSI_User_Def_Type_39, BSSI_User_Def_Type_40, DEX_ROW_ID FROM .B9000100 WHERE BSSI_Window_Name BETWEEN @BSSI_Window_Name_RS AND @BSSI_Window_Name_RE AND ( BSSI_Window_Name > @BSSI_Window_Name ) ORDER BY BSSI_Window_Name ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000100N_1] TO [DYNGRP]
GO
