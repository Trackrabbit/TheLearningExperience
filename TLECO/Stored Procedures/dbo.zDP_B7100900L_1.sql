SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100900L_1] (@SETUPKEY_RS smallint, @SETUPKEY_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, BSSI_Custom_Field_Name_1, BSSI_Custom_Field_Name_2, BSSI_Custom_Field_Name_3, BSSI_Custom_Field_Name_4, BSSI_Custom_Field_Name_5, BSSI_Custom_Field_Name_6, BSSI_Custom_Field_Name_7, BSSI_Custom_Field_Name_8, BSSI_Custom_Field_Name_9, BSSI_Custom_Field_Name_10, BSSI_Custom_Field_Name_11, BSSI_Custom_Field_Name_12, BSSI_Custom_Field_Name_13, BSSI_Custom_Field_Name_14, BSSI_Custom_Field_Name_15, BSSI_Custom_Field_Name_16, BSSI_Custom_Field_Name_17, BSSI_Custom_Field_Name_18, BSSI_Custom_Field_Name_19, BSSI_Custom_Field_Name_20, BSSI_Custom_Field_Name_21, BSSI_Custom_Field_Name_22, BSSI_Custom_Field_Name_23, BSSI_Custom_Field_Name_24, BSSI_Custom_Field_Name_25, BSSI_Custom_Field_Name_26, BSSI_Custom_Field_Name_27, BSSI_Custom_Field_Name_28, BSSI_Custom_Field_Name_29, BSSI_Custom_Field_Name_30, BSSI_Custom_Field_Name_31, BSSI_Custom_Field_Name_32, BSSI_Custom_Field_Name_33, BSSI_Custom_Field_Name_34, BSSI_Custom_Field_Name_35, BSSI_Custom_Field_Name_36, BSSI_Custom_Field_Name_37, BSSI_Custom_Field_Name_38, BSSI_Custom_Field_Name_39, BSSI_Custom_Field_Name_40, BSSI_Custom_Field_Name_41, BSSI_Custom_Field_Name_42, BSSI_Custom_Field_Name_43, BSSI_Custom_Field_Name_44, BSSI_Custom_Field_Name_45, BSSI_Custom_Field_Name_46, BSSI_Custom_Field_Name_47, BSSI_Custom_Field_Name_48, BSSI_Custom_Field_Name_49, BSSI_Custom_Field_Name_50, BSSI_Custom_Field_Type_1, BSSI_Custom_Field_Type_2, BSSI_Custom_Field_Type_3, BSSI_Custom_Field_Type_4, BSSI_Custom_Field_Type_5, BSSI_Custom_Field_Type_6, BSSI_Custom_Field_Type_7, BSSI_Custom_Field_Type_8, BSSI_Custom_Field_Type_9, BSSI_Custom_Field_Type_10, BSSI_Custom_Field_Type_11, BSSI_Custom_Field_Type_12, BSSI_Custom_Field_Type_13, BSSI_Custom_Field_Type_14, BSSI_Custom_Field_Type_15, BSSI_Custom_Field_Type_16, BSSI_Custom_Field_Type_17, BSSI_Custom_Field_Type_18, BSSI_Custom_Field_Type_19, BSSI_Custom_Field_Type_20, BSSI_Custom_Field_Type_21, BSSI_Custom_Field_Type_22, BSSI_Custom_Field_Type_23, BSSI_Custom_Field_Type_24, BSSI_Custom_Field_Type_25, BSSI_Custom_Field_Type_26, BSSI_Custom_Field_Type_27, BSSI_Custom_Field_Type_28, BSSI_Custom_Field_Type_29, BSSI_Custom_Field_Type_30, BSSI_Custom_Field_Type_31, BSSI_Custom_Field_Type_32, BSSI_Custom_Field_Type_33, BSSI_Custom_Field_Type_34, BSSI_Custom_Field_Type_35, BSSI_Custom_Field_Type_36, BSSI_Custom_Field_Type_37, BSSI_Custom_Field_Type_38, BSSI_Custom_Field_Type_39, BSSI_Custom_Field_Type_40, BSSI_Custom_Field_Type_41, BSSI_Custom_Field_Type_42, BSSI_Custom_Field_Type_43, BSSI_Custom_Field_Type_44, BSSI_Custom_Field_Type_45, BSSI_Custom_Field_Type_46, BSSI_Custom_Field_Type_47, BSSI_Custom_Field_Type_48, BSSI_Custom_Field_Type_49, BSSI_Custom_Field_Type_50, DEX_ROW_ID FROM .B7100900 ORDER BY SETUPKEY DESC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, BSSI_Custom_Field_Name_1, BSSI_Custom_Field_Name_2, BSSI_Custom_Field_Name_3, BSSI_Custom_Field_Name_4, BSSI_Custom_Field_Name_5, BSSI_Custom_Field_Name_6, BSSI_Custom_Field_Name_7, BSSI_Custom_Field_Name_8, BSSI_Custom_Field_Name_9, BSSI_Custom_Field_Name_10, BSSI_Custom_Field_Name_11, BSSI_Custom_Field_Name_12, BSSI_Custom_Field_Name_13, BSSI_Custom_Field_Name_14, BSSI_Custom_Field_Name_15, BSSI_Custom_Field_Name_16, BSSI_Custom_Field_Name_17, BSSI_Custom_Field_Name_18, BSSI_Custom_Field_Name_19, BSSI_Custom_Field_Name_20, BSSI_Custom_Field_Name_21, BSSI_Custom_Field_Name_22, BSSI_Custom_Field_Name_23, BSSI_Custom_Field_Name_24, BSSI_Custom_Field_Name_25, BSSI_Custom_Field_Name_26, BSSI_Custom_Field_Name_27, BSSI_Custom_Field_Name_28, BSSI_Custom_Field_Name_29, BSSI_Custom_Field_Name_30, BSSI_Custom_Field_Name_31, BSSI_Custom_Field_Name_32, BSSI_Custom_Field_Name_33, BSSI_Custom_Field_Name_34, BSSI_Custom_Field_Name_35, BSSI_Custom_Field_Name_36, BSSI_Custom_Field_Name_37, BSSI_Custom_Field_Name_38, BSSI_Custom_Field_Name_39, BSSI_Custom_Field_Name_40, BSSI_Custom_Field_Name_41, BSSI_Custom_Field_Name_42, BSSI_Custom_Field_Name_43, BSSI_Custom_Field_Name_44, BSSI_Custom_Field_Name_45, BSSI_Custom_Field_Name_46, BSSI_Custom_Field_Name_47, BSSI_Custom_Field_Name_48, BSSI_Custom_Field_Name_49, BSSI_Custom_Field_Name_50, BSSI_Custom_Field_Type_1, BSSI_Custom_Field_Type_2, BSSI_Custom_Field_Type_3, BSSI_Custom_Field_Type_4, BSSI_Custom_Field_Type_5, BSSI_Custom_Field_Type_6, BSSI_Custom_Field_Type_7, BSSI_Custom_Field_Type_8, BSSI_Custom_Field_Type_9, BSSI_Custom_Field_Type_10, BSSI_Custom_Field_Type_11, BSSI_Custom_Field_Type_12, BSSI_Custom_Field_Type_13, BSSI_Custom_Field_Type_14, BSSI_Custom_Field_Type_15, BSSI_Custom_Field_Type_16, BSSI_Custom_Field_Type_17, BSSI_Custom_Field_Type_18, BSSI_Custom_Field_Type_19, BSSI_Custom_Field_Type_20, BSSI_Custom_Field_Type_21, BSSI_Custom_Field_Type_22, BSSI_Custom_Field_Type_23, BSSI_Custom_Field_Type_24, BSSI_Custom_Field_Type_25, BSSI_Custom_Field_Type_26, BSSI_Custom_Field_Type_27, BSSI_Custom_Field_Type_28, BSSI_Custom_Field_Type_29, BSSI_Custom_Field_Type_30, BSSI_Custom_Field_Type_31, BSSI_Custom_Field_Type_32, BSSI_Custom_Field_Type_33, BSSI_Custom_Field_Type_34, BSSI_Custom_Field_Type_35, BSSI_Custom_Field_Type_36, BSSI_Custom_Field_Type_37, BSSI_Custom_Field_Type_38, BSSI_Custom_Field_Type_39, BSSI_Custom_Field_Type_40, BSSI_Custom_Field_Type_41, BSSI_Custom_Field_Type_42, BSSI_Custom_Field_Type_43, BSSI_Custom_Field_Type_44, BSSI_Custom_Field_Type_45, BSSI_Custom_Field_Type_46, BSSI_Custom_Field_Type_47, BSSI_Custom_Field_Type_48, BSSI_Custom_Field_Type_49, BSSI_Custom_Field_Type_50, DEX_ROW_ID FROM .B7100900 WHERE SETUPKEY = @SETUPKEY_RS ORDER BY SETUPKEY DESC END ELSE BEGIN SELECT TOP 25  SETUPKEY, BSSI_Custom_Field_Name_1, BSSI_Custom_Field_Name_2, BSSI_Custom_Field_Name_3, BSSI_Custom_Field_Name_4, BSSI_Custom_Field_Name_5, BSSI_Custom_Field_Name_6, BSSI_Custom_Field_Name_7, BSSI_Custom_Field_Name_8, BSSI_Custom_Field_Name_9, BSSI_Custom_Field_Name_10, BSSI_Custom_Field_Name_11, BSSI_Custom_Field_Name_12, BSSI_Custom_Field_Name_13, BSSI_Custom_Field_Name_14, BSSI_Custom_Field_Name_15, BSSI_Custom_Field_Name_16, BSSI_Custom_Field_Name_17, BSSI_Custom_Field_Name_18, BSSI_Custom_Field_Name_19, BSSI_Custom_Field_Name_20, BSSI_Custom_Field_Name_21, BSSI_Custom_Field_Name_22, BSSI_Custom_Field_Name_23, BSSI_Custom_Field_Name_24, BSSI_Custom_Field_Name_25, BSSI_Custom_Field_Name_26, BSSI_Custom_Field_Name_27, BSSI_Custom_Field_Name_28, BSSI_Custom_Field_Name_29, BSSI_Custom_Field_Name_30, BSSI_Custom_Field_Name_31, BSSI_Custom_Field_Name_32, BSSI_Custom_Field_Name_33, BSSI_Custom_Field_Name_34, BSSI_Custom_Field_Name_35, BSSI_Custom_Field_Name_36, BSSI_Custom_Field_Name_37, BSSI_Custom_Field_Name_38, BSSI_Custom_Field_Name_39, BSSI_Custom_Field_Name_40, BSSI_Custom_Field_Name_41, BSSI_Custom_Field_Name_42, BSSI_Custom_Field_Name_43, BSSI_Custom_Field_Name_44, BSSI_Custom_Field_Name_45, BSSI_Custom_Field_Name_46, BSSI_Custom_Field_Name_47, BSSI_Custom_Field_Name_48, BSSI_Custom_Field_Name_49, BSSI_Custom_Field_Name_50, BSSI_Custom_Field_Type_1, BSSI_Custom_Field_Type_2, BSSI_Custom_Field_Type_3, BSSI_Custom_Field_Type_4, BSSI_Custom_Field_Type_5, BSSI_Custom_Field_Type_6, BSSI_Custom_Field_Type_7, BSSI_Custom_Field_Type_8, BSSI_Custom_Field_Type_9, BSSI_Custom_Field_Type_10, BSSI_Custom_Field_Type_11, BSSI_Custom_Field_Type_12, BSSI_Custom_Field_Type_13, BSSI_Custom_Field_Type_14, BSSI_Custom_Field_Type_15, BSSI_Custom_Field_Type_16, BSSI_Custom_Field_Type_17, BSSI_Custom_Field_Type_18, BSSI_Custom_Field_Type_19, BSSI_Custom_Field_Type_20, BSSI_Custom_Field_Type_21, BSSI_Custom_Field_Type_22, BSSI_Custom_Field_Type_23, BSSI_Custom_Field_Type_24, BSSI_Custom_Field_Type_25, BSSI_Custom_Field_Type_26, BSSI_Custom_Field_Type_27, BSSI_Custom_Field_Type_28, BSSI_Custom_Field_Type_29, BSSI_Custom_Field_Type_30, BSSI_Custom_Field_Type_31, BSSI_Custom_Field_Type_32, BSSI_Custom_Field_Type_33, BSSI_Custom_Field_Type_34, BSSI_Custom_Field_Type_35, BSSI_Custom_Field_Type_36, BSSI_Custom_Field_Type_37, BSSI_Custom_Field_Type_38, BSSI_Custom_Field_Type_39, BSSI_Custom_Field_Type_40, BSSI_Custom_Field_Type_41, BSSI_Custom_Field_Type_42, BSSI_Custom_Field_Type_43, BSSI_Custom_Field_Type_44, BSSI_Custom_Field_Type_45, BSSI_Custom_Field_Type_46, BSSI_Custom_Field_Type_47, BSSI_Custom_Field_Type_48, BSSI_Custom_Field_Type_49, BSSI_Custom_Field_Type_50, DEX_ROW_ID FROM .B7100900 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE ORDER BY SETUPKEY DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100900L_1] TO [DYNGRP]
GO
