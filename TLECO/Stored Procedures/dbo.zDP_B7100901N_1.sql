SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100901N_1] (@BS int, @SETUPKEY smallint, @BSSI_Recognition_SOrigin smallint, @BSSI_Recognition_SNumber char(25), @SETUPKEY_RS smallint, @BSSI_Recognition_SOrigin_RS smallint, @BSSI_Recognition_SNumber_RS char(25), @SETUPKEY_RE smallint, @BSSI_Recognition_SOrigin_RE smallint, @BSSI_Recognition_SNumber_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @SETUPKEY_RS IS NULL BEGIN SELECT TOP 25  SETUPKEY, BSSI_Recognition_SOrigin, BSSI_Recognition_SNumber, BSSI_Custom_String_Field_1, BSSI_Custom_String_Field_2, BSSI_Custom_String_Field_3, BSSI_Custom_String_Field_4, BSSI_Custom_String_Field_5, BSSI_Custom_String_Field_6, BSSI_Custom_String_Field_7, BSSI_Custom_String_Field_8, BSSI_Custom_String_Field_9, BSSI_Custom_String_Field_10, BSSI_Custom_String_Field_11, BSSI_Custom_String_Field_12, BSSI_Custom_String_Field_13, BSSI_Custom_String_Field_14, BSSI_Custom_String_Field_15, BSSI_Custom_String_Field_16, BSSI_Custom_String_Field_17, BSSI_Custom_String_Field_18, BSSI_Custom_String_Field_19, BSSI_Custom_String_Field_20, BSSI_Custom_String_Field_21, BSSI_Custom_String_Field_22, BSSI_Custom_String_Field_23, BSSI_Custom_String_Field_24, BSSI_Custom_String_Field_25, BSSI_Custom_String_Field_26, BSSI_Custom_String_Field_27, BSSI_Custom_String_Field_28, BSSI_Custom_String_Field_29, BSSI_Custom_String_Field_30, BSSI_Custom_String_Field_31, BSSI_Custom_String_Field_32, BSSI_Custom_String_Field_33, BSSI_Custom_String_Field_34, BSSI_Custom_String_Field_35, BSSI_Custom_String_Field_36, BSSI_Custom_String_Field_37, BSSI_Custom_String_Field_38, BSSI_Custom_String_Field_39, BSSI_Custom_String_Field_40, BSSI_Custom_IntegerField_1, BSSI_Custom_IntegerField_2, BSSI_Custom_IntegerField_3, BSSI_Custom_IntegerField_4, BSSI_Custom_IntegerField_5, BSSI_Custom_IntegerField_6, BSSI_Custom_IntegerField_7, BSSI_Custom_IntegerField_8, BSSI_Custom_IntegerField_9, BSSI_Custom_IntegerField_10, BSSI_Custom_IntegerField_11, BSSI_Custom_IntegerField_12, BSSI_Custom_IntegerField_13, BSSI_Custom_IntegerField_14, BSSI_Custom_IntegerField_15, BSSI_Custom_IntegerField_16, BSSI_Custom_IntegerField_17, BSSI_Custom_IntegerField_18, BSSI_Custom_IntegerField_19, BSSI_Custom_IntegerField_20, BSSI_Custom_IntegerField_21, BSSI_Custom_IntegerField_22, BSSI_Custom_IntegerField_23, BSSI_Custom_IntegerField_24, BSSI_Custom_IntegerField_25, BSSI_Custom_IntegerField_26, BSSI_Custom_IntegerField_27, BSSI_Custom_IntegerField_28, BSSI_Custom_IntegerField_29, BSSI_Custom_IntegerField_30, BSSI_Custom_IntegerField_31, BSSI_Custom_IntegerField_32, BSSI_Custom_IntegerField_33, BSSI_Custom_IntegerField_34, BSSI_Custom_IntegerField_35, BSSI_Custom_IntegerField_36, BSSI_Custom_IntegerField_37, BSSI_Custom_IntegerField_38, BSSI_Custom_IntegerField_39, BSSI_Custom_IntegerField_40, BSSI_Custom_Double_Field_1, BSSI_Custom_Double_Field_2, BSSI_Custom_Double_Field_3, BSSI_Custom_Double_Field_4, BSSI_Custom_Double_Field_5, BSSI_Custom_Double_Field_6, BSSI_Custom_Double_Field_7, BSSI_Custom_Double_Field_8, BSSI_Custom_Double_Field_9, BSSI_Custom_Double_Field_10, BSSI_Custom_Double_Field_11, BSSI_Custom_Double_Field_12, BSSI_Custom_Double_Field_13, BSSI_Custom_Double_Field_14, BSSI_Custom_Double_Field_15, BSSI_Custom_Double_Field_16, BSSI_Custom_Double_Field_17, BSSI_Custom_Double_Field_18, BSSI_Custom_Double_Field_19, BSSI_Custom_Double_Field_20, BSSI_Custom_Double_Field_21, BSSI_Custom_Double_Field_22, BSSI_Custom_Double_Field_23, BSSI_Custom_Double_Field_24, BSSI_Custom_Double_Field_25, BSSI_Custom_Double_Field_26, BSSI_Custom_Double_Field_27, BSSI_Custom_Double_Field_28, BSSI_Custom_Double_Field_29, BSSI_Custom_Double_Field_30, BSSI_Custom_Double_Field_31, BSSI_Custom_Double_Field_32, BSSI_Custom_Double_Field_33, BSSI_Custom_Double_Field_34, BSSI_Custom_Double_Field_35, BSSI_Custom_Double_Field_36, BSSI_Custom_Double_Field_37, BSSI_Custom_Double_Field_38, BSSI_Custom_Double_Field_39, BSSI_Custom_Double_Field_40, BSSICustomCheckbox_1, BSSICustomCheckbox_2, BSSICustomCheckbox_3, BSSICustomCheckbox_4, BSSICustomCheckbox_5, BSSICustomCheckbox_6, BSSICustomCheckbox_7, BSSICustomCheckbox_8, BSSICustomCheckbox_9, BSSICustomCheckbox_10, BSSICustomCheckbox_11, BSSICustomCheckbox_12, BSSICustomCheckbox_13, BSSICustomCheckbox_14, BSSICustomCheckbox_15, BSSICustomCheckbox_16, BSSICustomCheckbox_17, BSSICustomCheckbox_18, BSSICustomCheckbox_19, BSSICustomCheckbox_20, BSSICustomCheckbox_21, BSSICustomCheckbox_22, BSSICustomCheckbox_23, BSSICustomCheckbox_24, BSSICustomCheckbox_25, BSSICustomCheckbox_26, BSSICustomCheckbox_27, BSSICustomCheckbox_28, BSSICustomCheckbox_29, BSSICustomCheckbox_30, BSSICustomCheckbox_31, BSSICustomCheckbox_32, BSSICustomCheckbox_33, BSSICustomCheckbox_34, BSSICustomCheckbox_35, BSSICustomCheckbox_36, BSSICustomCheckbox_37, BSSICustomCheckbox_38, BSSICustomCheckbox_39, BSSICustomCheckbox_40, BSSI_Custom_Date_Field_1, BSSI_Custom_Date_Field_2, BSSI_Custom_Date_Field_3, BSSI_Custom_Date_Field_4, BSSI_Custom_Date_Field_5, BSSI_Custom_Date_Field_6, BSSI_Custom_Date_Field_7, BSSI_Custom_Date_Field_8, BSSI_Custom_Date_Field_9, BSSI_Custom_Date_Field_10, BSSI_Custom_Date_Field_11, BSSI_Custom_Date_Field_12, BSSI_Custom_Date_Field_13, BSSI_Custom_Date_Field_14, BSSI_Custom_Date_Field_15, BSSI_Custom_Date_Field_16, BSSI_Custom_Date_Field_17, BSSI_Custom_Date_Field_18, BSSI_Custom_Date_Field_19, BSSI_Custom_Date_Field_20, BSSI_Custom_Date_Field_21, BSSI_Custom_Date_Field_22, BSSI_Custom_Date_Field_23, BSSI_Custom_Date_Field_24, BSSI_Custom_Date_Field_25, BSSI_Custom_Date_Field_26, BSSI_Custom_Date_Field_27, BSSI_Custom_Date_Field_28, BSSI_Custom_Date_Field_29, BSSI_Custom_Date_Field_30, BSSI_Custom_Date_Field_31, BSSI_Custom_Date_Field_32, BSSI_Custom_Date_Field_33, BSSI_Custom_Date_Field_34, BSSI_Custom_Date_Field_35, BSSI_Custom_Date_Field_36, BSSI_Custom_Date_Field_37, BSSI_Custom_Date_Field_38, BSSI_Custom_Date_Field_39, BSSI_Custom_Date_Field_40, DUMYRCRD, DEX_ROW_ID FROM .B7100901 WHERE ( SETUPKEY = @SETUPKEY AND BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber OR SETUPKEY = @SETUPKEY AND BSSI_Recognition_SOrigin > @BSSI_Recognition_SOrigin OR SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC, BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC END ELSE IF @SETUPKEY_RS = @SETUPKEY_RE BEGIN SELECT TOP 25  SETUPKEY, BSSI_Recognition_SOrigin, BSSI_Recognition_SNumber, BSSI_Custom_String_Field_1, BSSI_Custom_String_Field_2, BSSI_Custom_String_Field_3, BSSI_Custom_String_Field_4, BSSI_Custom_String_Field_5, BSSI_Custom_String_Field_6, BSSI_Custom_String_Field_7, BSSI_Custom_String_Field_8, BSSI_Custom_String_Field_9, BSSI_Custom_String_Field_10, BSSI_Custom_String_Field_11, BSSI_Custom_String_Field_12, BSSI_Custom_String_Field_13, BSSI_Custom_String_Field_14, BSSI_Custom_String_Field_15, BSSI_Custom_String_Field_16, BSSI_Custom_String_Field_17, BSSI_Custom_String_Field_18, BSSI_Custom_String_Field_19, BSSI_Custom_String_Field_20, BSSI_Custom_String_Field_21, BSSI_Custom_String_Field_22, BSSI_Custom_String_Field_23, BSSI_Custom_String_Field_24, BSSI_Custom_String_Field_25, BSSI_Custom_String_Field_26, BSSI_Custom_String_Field_27, BSSI_Custom_String_Field_28, BSSI_Custom_String_Field_29, BSSI_Custom_String_Field_30, BSSI_Custom_String_Field_31, BSSI_Custom_String_Field_32, BSSI_Custom_String_Field_33, BSSI_Custom_String_Field_34, BSSI_Custom_String_Field_35, BSSI_Custom_String_Field_36, BSSI_Custom_String_Field_37, BSSI_Custom_String_Field_38, BSSI_Custom_String_Field_39, BSSI_Custom_String_Field_40, BSSI_Custom_IntegerField_1, BSSI_Custom_IntegerField_2, BSSI_Custom_IntegerField_3, BSSI_Custom_IntegerField_4, BSSI_Custom_IntegerField_5, BSSI_Custom_IntegerField_6, BSSI_Custom_IntegerField_7, BSSI_Custom_IntegerField_8, BSSI_Custom_IntegerField_9, BSSI_Custom_IntegerField_10, BSSI_Custom_IntegerField_11, BSSI_Custom_IntegerField_12, BSSI_Custom_IntegerField_13, BSSI_Custom_IntegerField_14, BSSI_Custom_IntegerField_15, BSSI_Custom_IntegerField_16, BSSI_Custom_IntegerField_17, BSSI_Custom_IntegerField_18, BSSI_Custom_IntegerField_19, BSSI_Custom_IntegerField_20, BSSI_Custom_IntegerField_21, BSSI_Custom_IntegerField_22, BSSI_Custom_IntegerField_23, BSSI_Custom_IntegerField_24, BSSI_Custom_IntegerField_25, BSSI_Custom_IntegerField_26, BSSI_Custom_IntegerField_27, BSSI_Custom_IntegerField_28, BSSI_Custom_IntegerField_29, BSSI_Custom_IntegerField_30, BSSI_Custom_IntegerField_31, BSSI_Custom_IntegerField_32, BSSI_Custom_IntegerField_33, BSSI_Custom_IntegerField_34, BSSI_Custom_IntegerField_35, BSSI_Custom_IntegerField_36, BSSI_Custom_IntegerField_37, BSSI_Custom_IntegerField_38, BSSI_Custom_IntegerField_39, BSSI_Custom_IntegerField_40, BSSI_Custom_Double_Field_1, BSSI_Custom_Double_Field_2, BSSI_Custom_Double_Field_3, BSSI_Custom_Double_Field_4, BSSI_Custom_Double_Field_5, BSSI_Custom_Double_Field_6, BSSI_Custom_Double_Field_7, BSSI_Custom_Double_Field_8, BSSI_Custom_Double_Field_9, BSSI_Custom_Double_Field_10, BSSI_Custom_Double_Field_11, BSSI_Custom_Double_Field_12, BSSI_Custom_Double_Field_13, BSSI_Custom_Double_Field_14, BSSI_Custom_Double_Field_15, BSSI_Custom_Double_Field_16, BSSI_Custom_Double_Field_17, BSSI_Custom_Double_Field_18, BSSI_Custom_Double_Field_19, BSSI_Custom_Double_Field_20, BSSI_Custom_Double_Field_21, BSSI_Custom_Double_Field_22, BSSI_Custom_Double_Field_23, BSSI_Custom_Double_Field_24, BSSI_Custom_Double_Field_25, BSSI_Custom_Double_Field_26, BSSI_Custom_Double_Field_27, BSSI_Custom_Double_Field_28, BSSI_Custom_Double_Field_29, BSSI_Custom_Double_Field_30, BSSI_Custom_Double_Field_31, BSSI_Custom_Double_Field_32, BSSI_Custom_Double_Field_33, BSSI_Custom_Double_Field_34, BSSI_Custom_Double_Field_35, BSSI_Custom_Double_Field_36, BSSI_Custom_Double_Field_37, BSSI_Custom_Double_Field_38, BSSI_Custom_Double_Field_39, BSSI_Custom_Double_Field_40, BSSICustomCheckbox_1, BSSICustomCheckbox_2, BSSICustomCheckbox_3, BSSICustomCheckbox_4, BSSICustomCheckbox_5, BSSICustomCheckbox_6, BSSICustomCheckbox_7, BSSICustomCheckbox_8, BSSICustomCheckbox_9, BSSICustomCheckbox_10, BSSICustomCheckbox_11, BSSICustomCheckbox_12, BSSICustomCheckbox_13, BSSICustomCheckbox_14, BSSICustomCheckbox_15, BSSICustomCheckbox_16, BSSICustomCheckbox_17, BSSICustomCheckbox_18, BSSICustomCheckbox_19, BSSICustomCheckbox_20, BSSICustomCheckbox_21, BSSICustomCheckbox_22, BSSICustomCheckbox_23, BSSICustomCheckbox_24, BSSICustomCheckbox_25, BSSICustomCheckbox_26, BSSICustomCheckbox_27, BSSICustomCheckbox_28, BSSICustomCheckbox_29, BSSICustomCheckbox_30, BSSICustomCheckbox_31, BSSICustomCheckbox_32, BSSICustomCheckbox_33, BSSICustomCheckbox_34, BSSICustomCheckbox_35, BSSICustomCheckbox_36, BSSICustomCheckbox_37, BSSICustomCheckbox_38, BSSICustomCheckbox_39, BSSICustomCheckbox_40, BSSI_Custom_Date_Field_1, BSSI_Custom_Date_Field_2, BSSI_Custom_Date_Field_3, BSSI_Custom_Date_Field_4, BSSI_Custom_Date_Field_5, BSSI_Custom_Date_Field_6, BSSI_Custom_Date_Field_7, BSSI_Custom_Date_Field_8, BSSI_Custom_Date_Field_9, BSSI_Custom_Date_Field_10, BSSI_Custom_Date_Field_11, BSSI_Custom_Date_Field_12, BSSI_Custom_Date_Field_13, BSSI_Custom_Date_Field_14, BSSI_Custom_Date_Field_15, BSSI_Custom_Date_Field_16, BSSI_Custom_Date_Field_17, BSSI_Custom_Date_Field_18, BSSI_Custom_Date_Field_19, BSSI_Custom_Date_Field_20, BSSI_Custom_Date_Field_21, BSSI_Custom_Date_Field_22, BSSI_Custom_Date_Field_23, BSSI_Custom_Date_Field_24, BSSI_Custom_Date_Field_25, BSSI_Custom_Date_Field_26, BSSI_Custom_Date_Field_27, BSSI_Custom_Date_Field_28, BSSI_Custom_Date_Field_29, BSSI_Custom_Date_Field_30, BSSI_Custom_Date_Field_31, BSSI_Custom_Date_Field_32, BSSI_Custom_Date_Field_33, BSSI_Custom_Date_Field_34, BSSI_Custom_Date_Field_35, BSSI_Custom_Date_Field_36, BSSI_Custom_Date_Field_37, BSSI_Custom_Date_Field_38, BSSI_Custom_Date_Field_39, BSSI_Custom_Date_Field_40, DUMYRCRD, DEX_ROW_ID FROM .B7100901 WHERE SETUPKEY = @SETUPKEY_RS AND BSSI_Recognition_SOrigin BETWEEN @BSSI_Recognition_SOrigin_RS AND @BSSI_Recognition_SOrigin_RE AND BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND ( SETUPKEY = @SETUPKEY AND BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber OR SETUPKEY = @SETUPKEY AND BSSI_Recognition_SOrigin > @BSSI_Recognition_SOrigin OR SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC, BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC END ELSE BEGIN SELECT TOP 25  SETUPKEY, BSSI_Recognition_SOrigin, BSSI_Recognition_SNumber, BSSI_Custom_String_Field_1, BSSI_Custom_String_Field_2, BSSI_Custom_String_Field_3, BSSI_Custom_String_Field_4, BSSI_Custom_String_Field_5, BSSI_Custom_String_Field_6, BSSI_Custom_String_Field_7, BSSI_Custom_String_Field_8, BSSI_Custom_String_Field_9, BSSI_Custom_String_Field_10, BSSI_Custom_String_Field_11, BSSI_Custom_String_Field_12, BSSI_Custom_String_Field_13, BSSI_Custom_String_Field_14, BSSI_Custom_String_Field_15, BSSI_Custom_String_Field_16, BSSI_Custom_String_Field_17, BSSI_Custom_String_Field_18, BSSI_Custom_String_Field_19, BSSI_Custom_String_Field_20, BSSI_Custom_String_Field_21, BSSI_Custom_String_Field_22, BSSI_Custom_String_Field_23, BSSI_Custom_String_Field_24, BSSI_Custom_String_Field_25, BSSI_Custom_String_Field_26, BSSI_Custom_String_Field_27, BSSI_Custom_String_Field_28, BSSI_Custom_String_Field_29, BSSI_Custom_String_Field_30, BSSI_Custom_String_Field_31, BSSI_Custom_String_Field_32, BSSI_Custom_String_Field_33, BSSI_Custom_String_Field_34, BSSI_Custom_String_Field_35, BSSI_Custom_String_Field_36, BSSI_Custom_String_Field_37, BSSI_Custom_String_Field_38, BSSI_Custom_String_Field_39, BSSI_Custom_String_Field_40, BSSI_Custom_IntegerField_1, BSSI_Custom_IntegerField_2, BSSI_Custom_IntegerField_3, BSSI_Custom_IntegerField_4, BSSI_Custom_IntegerField_5, BSSI_Custom_IntegerField_6, BSSI_Custom_IntegerField_7, BSSI_Custom_IntegerField_8, BSSI_Custom_IntegerField_9, BSSI_Custom_IntegerField_10, BSSI_Custom_IntegerField_11, BSSI_Custom_IntegerField_12, BSSI_Custom_IntegerField_13, BSSI_Custom_IntegerField_14, BSSI_Custom_IntegerField_15, BSSI_Custom_IntegerField_16, BSSI_Custom_IntegerField_17, BSSI_Custom_IntegerField_18, BSSI_Custom_IntegerField_19, BSSI_Custom_IntegerField_20, BSSI_Custom_IntegerField_21, BSSI_Custom_IntegerField_22, BSSI_Custom_IntegerField_23, BSSI_Custom_IntegerField_24, BSSI_Custom_IntegerField_25, BSSI_Custom_IntegerField_26, BSSI_Custom_IntegerField_27, BSSI_Custom_IntegerField_28, BSSI_Custom_IntegerField_29, BSSI_Custom_IntegerField_30, BSSI_Custom_IntegerField_31, BSSI_Custom_IntegerField_32, BSSI_Custom_IntegerField_33, BSSI_Custom_IntegerField_34, BSSI_Custom_IntegerField_35, BSSI_Custom_IntegerField_36, BSSI_Custom_IntegerField_37, BSSI_Custom_IntegerField_38, BSSI_Custom_IntegerField_39, BSSI_Custom_IntegerField_40, BSSI_Custom_Double_Field_1, BSSI_Custom_Double_Field_2, BSSI_Custom_Double_Field_3, BSSI_Custom_Double_Field_4, BSSI_Custom_Double_Field_5, BSSI_Custom_Double_Field_6, BSSI_Custom_Double_Field_7, BSSI_Custom_Double_Field_8, BSSI_Custom_Double_Field_9, BSSI_Custom_Double_Field_10, BSSI_Custom_Double_Field_11, BSSI_Custom_Double_Field_12, BSSI_Custom_Double_Field_13, BSSI_Custom_Double_Field_14, BSSI_Custom_Double_Field_15, BSSI_Custom_Double_Field_16, BSSI_Custom_Double_Field_17, BSSI_Custom_Double_Field_18, BSSI_Custom_Double_Field_19, BSSI_Custom_Double_Field_20, BSSI_Custom_Double_Field_21, BSSI_Custom_Double_Field_22, BSSI_Custom_Double_Field_23, BSSI_Custom_Double_Field_24, BSSI_Custom_Double_Field_25, BSSI_Custom_Double_Field_26, BSSI_Custom_Double_Field_27, BSSI_Custom_Double_Field_28, BSSI_Custom_Double_Field_29, BSSI_Custom_Double_Field_30, BSSI_Custom_Double_Field_31, BSSI_Custom_Double_Field_32, BSSI_Custom_Double_Field_33, BSSI_Custom_Double_Field_34, BSSI_Custom_Double_Field_35, BSSI_Custom_Double_Field_36, BSSI_Custom_Double_Field_37, BSSI_Custom_Double_Field_38, BSSI_Custom_Double_Field_39, BSSI_Custom_Double_Field_40, BSSICustomCheckbox_1, BSSICustomCheckbox_2, BSSICustomCheckbox_3, BSSICustomCheckbox_4, BSSICustomCheckbox_5, BSSICustomCheckbox_6, BSSICustomCheckbox_7, BSSICustomCheckbox_8, BSSICustomCheckbox_9, BSSICustomCheckbox_10, BSSICustomCheckbox_11, BSSICustomCheckbox_12, BSSICustomCheckbox_13, BSSICustomCheckbox_14, BSSICustomCheckbox_15, BSSICustomCheckbox_16, BSSICustomCheckbox_17, BSSICustomCheckbox_18, BSSICustomCheckbox_19, BSSICustomCheckbox_20, BSSICustomCheckbox_21, BSSICustomCheckbox_22, BSSICustomCheckbox_23, BSSICustomCheckbox_24, BSSICustomCheckbox_25, BSSICustomCheckbox_26, BSSICustomCheckbox_27, BSSICustomCheckbox_28, BSSICustomCheckbox_29, BSSICustomCheckbox_30, BSSICustomCheckbox_31, BSSICustomCheckbox_32, BSSICustomCheckbox_33, BSSICustomCheckbox_34, BSSICustomCheckbox_35, BSSICustomCheckbox_36, BSSICustomCheckbox_37, BSSICustomCheckbox_38, BSSICustomCheckbox_39, BSSICustomCheckbox_40, BSSI_Custom_Date_Field_1, BSSI_Custom_Date_Field_2, BSSI_Custom_Date_Field_3, BSSI_Custom_Date_Field_4, BSSI_Custom_Date_Field_5, BSSI_Custom_Date_Field_6, BSSI_Custom_Date_Field_7, BSSI_Custom_Date_Field_8, BSSI_Custom_Date_Field_9, BSSI_Custom_Date_Field_10, BSSI_Custom_Date_Field_11, BSSI_Custom_Date_Field_12, BSSI_Custom_Date_Field_13, BSSI_Custom_Date_Field_14, BSSI_Custom_Date_Field_15, BSSI_Custom_Date_Field_16, BSSI_Custom_Date_Field_17, BSSI_Custom_Date_Field_18, BSSI_Custom_Date_Field_19, BSSI_Custom_Date_Field_20, BSSI_Custom_Date_Field_21, BSSI_Custom_Date_Field_22, BSSI_Custom_Date_Field_23, BSSI_Custom_Date_Field_24, BSSI_Custom_Date_Field_25, BSSI_Custom_Date_Field_26, BSSI_Custom_Date_Field_27, BSSI_Custom_Date_Field_28, BSSI_Custom_Date_Field_29, BSSI_Custom_Date_Field_30, BSSI_Custom_Date_Field_31, BSSI_Custom_Date_Field_32, BSSI_Custom_Date_Field_33, BSSI_Custom_Date_Field_34, BSSI_Custom_Date_Field_35, BSSI_Custom_Date_Field_36, BSSI_Custom_Date_Field_37, BSSI_Custom_Date_Field_38, BSSI_Custom_Date_Field_39, BSSI_Custom_Date_Field_40, DUMYRCRD, DEX_ROW_ID FROM .B7100901 WHERE SETUPKEY BETWEEN @SETUPKEY_RS AND @SETUPKEY_RE AND BSSI_Recognition_SOrigin BETWEEN @BSSI_Recognition_SOrigin_RS AND @BSSI_Recognition_SOrigin_RE AND BSSI_Recognition_SNumber BETWEEN @BSSI_Recognition_SNumber_RS AND @BSSI_Recognition_SNumber_RE AND ( SETUPKEY = @SETUPKEY AND BSSI_Recognition_SOrigin = @BSSI_Recognition_SOrigin AND BSSI_Recognition_SNumber > @BSSI_Recognition_SNumber OR SETUPKEY = @SETUPKEY AND BSSI_Recognition_SOrigin > @BSSI_Recognition_SOrigin OR SETUPKEY > @SETUPKEY ) ORDER BY SETUPKEY ASC, BSSI_Recognition_SOrigin ASC, BSSI_Recognition_SNumber ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100901N_1] TO [DYNGRP]
GO
