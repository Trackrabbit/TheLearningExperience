SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123501SS_1] (@PP_Number char(21)) AS  set nocount on SELECT TOP 1  PP_Number, MEBANKID, Output_Format, BANKID, BANKNAME, BNKBRNCH, PHONE1, PHONE2, HYPELINK, DLFILAPTH, HYPEPATH, MEINCWFT, MEUPLDID, MKLSSTDD, MEUPTIM, ME_Number_of_Checks, ME_Checks_Amount, ME_Number_of_Voids, ME_Voids_Amount, ME_Confirmation_Number, Last_Reconciled_Date, Last_Reconciled_Balance, DEX_ROW_ID FROM .ME123501 WHERE PP_Number = @PP_Number ORDER BY PP_Number ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123501SS_1] TO [DYNGRP]
GO
