SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27601SS_1] (@CHEKBKID char(15)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  CHEKBKID, ME_Check_Format_ID, ME_MICR_1, ME_MICR_2, ME_MICR_3, ME_MICR_4, ME_MICR_5, ME_MICR_6, ME_MICR_7, ME_MICR_8, ME_MICR_9, ME_MICR_10, ME_MICR_11, ME_MICR_12, ME_MICR_13, ME_MICR_14, ME_MICR_15, ME_MICR_16, ME_MICR_17, ME_MICR_18, ME_MICR_19, ME_MICR_20, ME_MICR_21, ME_MICR_22, ME_MICR_23, ME_MICR_24, ME_MICR_25, ME_MICR_26, ME_MICR_27, ME_MICR_28, ME_MICR_29, ME_MICR_30, ME_MICR_31, ME_MICR_32, ME_MICR_33, ME_MICR_34, ME_MICR_35, ME_MICR_36, ME_MICR_37, ME_MICR_38, ME_MICR_39, ME_MICR_40, ME_MICR_41, ME_MICR_42, ME_MICR_43, ME_MICR_44, ME_MICR_45, CHKFORM, ME_Logo_ID_Array_1, ME_Logo_ID_Array_2, ME_Logo_ID_Array_3, dupdll, numXs, resvstr1, checkcomm1, checkcomm2, checkcomm3, ME_Stub_ID, ME_Using_Pre_Printed_Che, ME_Check_Digit_Divisor, ME_Check_Digit_DR_or_DSR, ME_Check_Digit_Use_Zeros, ME_Check_Digit_Weighted, ME_Check_Digit_Weighting, DEX_ROW_ID FROM .ME27601 WHERE CHEKBKID = @CHEKBKID ORDER BY CHEKBKID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27601SS_1] TO [DYNGRP]
GO