SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123501L_1] (@PP_Number_RS char(21), @PP_Number_RE char(21)) AS  set nocount on IF @PP_Number_RS IS NULL BEGIN SELECT TOP 25  PP_Number, MEBANKID, Output_Format, BANKID, BANKNAME, BNKBRNCH, PHONE1, PHONE2, HYPELINK, DLFILAPTH, HYPEPATH, MEINCWFT, MEUPLDID, MKLSSTDD, MEUPTIM, ME_Number_of_Checks, ME_Checks_Amount, ME_Number_of_Voids, ME_Voids_Amount, ME_Confirmation_Number, Last_Reconciled_Date, Last_Reconciled_Balance, DEX_ROW_ID FROM .ME123501 ORDER BY PP_Number DESC END ELSE IF @PP_Number_RS = @PP_Number_RE BEGIN SELECT TOP 25  PP_Number, MEBANKID, Output_Format, BANKID, BANKNAME, BNKBRNCH, PHONE1, PHONE2, HYPELINK, DLFILAPTH, HYPEPATH, MEINCWFT, MEUPLDID, MKLSSTDD, MEUPTIM, ME_Number_of_Checks, ME_Checks_Amount, ME_Number_of_Voids, ME_Voids_Amount, ME_Confirmation_Number, Last_Reconciled_Date, Last_Reconciled_Balance, DEX_ROW_ID FROM .ME123501 WHERE PP_Number = @PP_Number_RS ORDER BY PP_Number DESC END ELSE BEGIN SELECT TOP 25  PP_Number, MEBANKID, Output_Format, BANKID, BANKNAME, BNKBRNCH, PHONE1, PHONE2, HYPELINK, DLFILAPTH, HYPEPATH, MEINCWFT, MEUPLDID, MKLSSTDD, MEUPTIM, ME_Number_of_Checks, ME_Checks_Amount, ME_Number_of_Voids, ME_Voids_Amount, ME_Confirmation_Number, Last_Reconciled_Date, Last_Reconciled_Balance, DEX_ROW_ID FROM .ME123501 WHERE PP_Number BETWEEN @PP_Number_RS AND @PP_Number_RE ORDER BY PP_Number DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123501L_1] TO [DYNGRP]
GO
