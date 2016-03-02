SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PP000010SS_1] (@PP_Profile_Name char(21)) AS  set nocount on SELECT TOP 1  PP_Profile_Name, PP_Module, OFFINDX, ACTINDX, PP_Deferred_BC_Index, PP_Deferrals_Transfer_In, PP_Recognition_Index, PP_Calculation_Method, PP_Debit_Credit_1, PP_Debit_Credit_2, PP_Debit_Credit_3, PP_Debit_Credit_4, PP_Debit_Credit_5, PP_Debit_Credit_6, PP_Debit_Credit_7, PP_Debit_Credit_8, PP_Debit_Credit_9, PP_Debit_Credit_10, STRTNGDT, ENDINGDT, NUMOFPER, NOTEINDX, PP_Overwrite_Original_Di, PP_Miscellaneous_Periods, DEX_ROW_ID FROM .PP000010 WHERE PP_Profile_Name = @PP_Profile_Name ORDER BY PP_Profile_Name ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PP000010SS_1] TO [DYNGRP]
GO
