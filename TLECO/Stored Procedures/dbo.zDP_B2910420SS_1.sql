SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2910420SS_1] (@BSSI_Lease_Loan_Number char(17), @BSSI_Collateral_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Loan_Number, BSSI_Collateral_ID, BSSI_UserDefField_Int_1, BSSI_UserDefField_Int_2, BSSI_UserDefField_Int_3, BSSI_UserDefField_Int_4, BSSI_UserDefField_Int_5, BSSI_UserDefField_Int_6, BSSI_UserDefField_Int_7, BSSI_UserDefField_Int_8, BSSI_UserDefField_Int_9, BSSI_UserDefField_Int_10, BSSI_UserDefField_Int_11, BSSI_UserDefField_Int_12, BSSI_UserDefField_Int_13, BSSI_UserDefField_Int_14, BSSI_UserDefField_Int_15, BSSI_UserDefField_Int_16, BSSI_UserDefField_Int_17, BSSI_UserDefField_Int_18, BSSI_UserDefField_Int_19, BSSI_UserDefField_Int_20, BSSI_UserDefField_Int_21, BSSI_UserDefField_Int_22, BSSI_UserDefField_Int_23, BSSI_UserDefField_Int_24, BSSI_UserDefField_Int_25, BSSI_UserDefField_Int_26, BSSI_UserDefField_Int_27, BSSI_UserDefField_Int_28, BSSI_UserDefField_Int_29, BSSI_UserDefField_Int_30, BSSI_UserDefField_Int_31, BSSI_UserDefField_Int_32, BSSI_UserDefField_Int_33, BSSI_UserDefField_Int_34, BSSI_UserDefField_Int_35, BSSI_UserDefField_Int_36, BSSI_UserDefField_Int_37, BSSI_UserDefField_Int_38, BSSI_UserDefField_Int_39, BSSI_UserDefField_Int_40, BSSI_UserDefField_Double_1, BSSI_UserDefField_Double_2, BSSI_UserDefField_Double_3, BSSI_UserDefField_Double_4, BSSI_UserDefField_Double_5, BSSI_UserDefField_Double_6, BSSI_UserDefField_Double_7, BSSI_UserDefField_Double_8, BSSI_UserDefField_Double_9, BSSI_UserDefField_Double_10, BSSI_UserDefField_Double_11, BSSI_UserDefField_Double_12, BSSI_UserDefField_Double_13, BSSI_UserDefField_Double_14, BSSI_UserDefField_Double_15, BSSI_UserDefField_Double_16, BSSI_UserDefField_Double_17, BSSI_UserDefField_Double_18, BSSI_UserDefField_Double_19, BSSI_UserDefField_Double_20, BSSI_UserDefField_Double_21, BSSI_UserDefField_Double_22, BSSI_UserDefField_Double_23, BSSI_UserDefField_Double_24, BSSI_UserDefField_Double_25, BSSI_UserDefField_Double_26, BSSI_UserDefField_Double_27, BSSI_UserDefField_Double_28, BSSI_UserDefField_Double_29, BSSI_UserDefField_Double_30, BSSI_UserDefField_Double_31, BSSI_UserDefField_Double_32, BSSI_UserDefField_Double_33, BSSI_UserDefField_Double_34, BSSI_UserDefField_Double_35, BSSI_UserDefField_Double_36, BSSI_UserDefField_Double_37, BSSI_UserDefField_Double_38, BSSI_UserDefField_Double_39, BSSI_UserDefField_Double_40, BSSI_UserDefField_Str_1, BSSI_UserDefField_Str_2, BSSI_UserDefField_Str_3, BSSI_UserDefField_Str_4, BSSI_UserDefField_Str_5, BSSI_UserDefField_Str_6, BSSI_UserDefField_Str_7, BSSI_UserDefField_Str_8, BSSI_UserDefField_Str_9, BSSI_UserDefField_Str_10, BSSI_UserDefField_Str_11, BSSI_UserDefField_Str_12, BSSI_UserDefField_Str_13, BSSI_UserDefField_Str_14, BSSI_UserDefField_Str_15, BSSI_UserDefField_Str_16, BSSI_UserDefField_Str_17, BSSI_UserDefField_Str_18, BSSI_UserDefField_Str_19, BSSI_UserDefField_Str_20, BSSI_UserDefField_Str_21, BSSI_UserDefField_Str_22, BSSI_UserDefField_Str_23, BSSI_UserDefField_Str_24, BSSI_UserDefField_Str_25, BSSI_UserDefField_Str_26, BSSI_UserDefField_Str_27, BSSI_UserDefField_Str_28, BSSI_UserDefField_Str_29, BSSI_UserDefField_Str_30, BSSI_UserDefField_Str_31, BSSI_UserDefField_Str_32, BSSI_UserDefField_Str_33, BSSI_UserDefField_Str_34, BSSI_UserDefField_Str_35, BSSI_UserDefField_Str_36, BSSI_UserDefField_Str_37, BSSI_UserDefField_Str_38, BSSI_UserDefField_Str_39, BSSI_UserDefField_Str_40, BSSI_UserDefField_CB_1, BSSI_UserDefField_CB_2, BSSI_UserDefField_CB_3, BSSI_UserDefField_CB_4, BSSI_UserDefField_CB_5, BSSI_UserDefField_CB_6, BSSI_UserDefField_CB_7, BSSI_UserDefField_CB_8, BSSI_UserDefField_CB_9, BSSI_UserDefField_CB_10, BSSI_UserDefField_CB_11, BSSI_UserDefField_CB_12, BSSI_UserDefField_CB_13, BSSI_UserDefField_CB_14, BSSI_UserDefField_CB_15, BSSI_UserDefField_CB_16, BSSI_UserDefField_CB_17, BSSI_UserDefField_CB_18, BSSI_UserDefField_CB_19, BSSI_UserDefField_CB_20, BSSI_UserDefField_CB_21, BSSI_UserDefField_CB_22, BSSI_UserDefField_CB_23, BSSI_UserDefField_CB_24, BSSI_UserDefField_CB_25, BSSI_UserDefField_CB_26, BSSI_UserDefField_CB_27, BSSI_UserDefField_CB_28, BSSI_UserDefField_CB_29, BSSI_UserDefField_CB_30, BSSI_UserDefField_CB_31, BSSI_UserDefField_CB_32, BSSI_UserDefField_CB_33, BSSI_UserDefField_CB_34, BSSI_UserDefField_CB_35, BSSI_UserDefField_CB_36, BSSI_UserDefField_CB_37, BSSI_UserDefField_CB_38, BSSI_UserDefField_CB_39, BSSI_UserDefField_CB_40, BSSI_UserDefField_Dt_1, BSSI_UserDefField_Dt_2, BSSI_UserDefField_Dt_3, BSSI_UserDefField_Dt_4, BSSI_UserDefField_Dt_5, BSSI_UserDefField_Dt_6, BSSI_UserDefField_Dt_7, BSSI_UserDefField_Dt_8, BSSI_UserDefField_Dt_9, BSSI_UserDefField_Dt_10, BSSI_UserDefField_Dt_11, BSSI_UserDefField_Dt_12, BSSI_UserDefField_Dt_13, BSSI_UserDefField_Dt_14, BSSI_UserDefField_Dt_15, BSSI_UserDefField_Dt_16, BSSI_UserDefField_Dt_17, BSSI_UserDefField_Dt_18, BSSI_UserDefField_Dt_19, BSSI_UserDefField_Dt_20, BSSI_UserDefField_Dt_21, BSSI_UserDefField_Dt_22, BSSI_UserDefField_Dt_23, BSSI_UserDefField_Dt_24, BSSI_UserDefField_Dt_25, BSSI_UserDefField_Dt_26, BSSI_UserDefField_Dt_27, BSSI_UserDefField_Dt_28, BSSI_UserDefField_Dt_29, BSSI_UserDefField_Dt_30, BSSI_UserDefField_Dt_31, BSSI_UserDefField_Dt_32, BSSI_UserDefField_Dt_33, BSSI_UserDefField_Dt_34, BSSI_UserDefField_Dt_35, BSSI_UserDefField_Dt_36, BSSI_UserDefField_Dt_37, BSSI_UserDefField_Dt_38, BSSI_UserDefField_Dt_39, BSSI_UserDefField_Dt_40, DEX_ROW_ID FROM .B2910420 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND BSSI_Collateral_ID = @BSSI_Collateral_ID ORDER BY BSSI_Lease_Loan_Number ASC, BSSI_Collateral_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2910420SS_1] TO [DYNGRP]
GO
