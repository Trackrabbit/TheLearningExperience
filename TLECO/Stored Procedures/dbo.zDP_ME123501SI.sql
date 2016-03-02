SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123501SI] (@PP_Number char(21), @MEBANKID char(21), @Output_Format char(21), @BANKID char(15), @BANKNAME char(31), @BNKBRNCH char(21), @PHONE1 char(21), @PHONE2 char(21), @HYPELINK tinyint, @DLFILAPTH char(81), @HYPEPATH char(81), @MEINCWFT tinyint, @MEUPLDID char(21), @MKLSSTDD datetime, @MEUPTIM datetime, @ME_Number_of_Checks smallint, @ME_Checks_Amount numeric(19,5), @ME_Number_of_Voids smallint, @ME_Voids_Amount numeric(19,5), @ME_Confirmation_Number char(21), @Last_Reconciled_Date datetime, @Last_Reconciled_Balance numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ME123501 (PP_Number, MEBANKID, Output_Format, BANKID, BANKNAME, BNKBRNCH, PHONE1, PHONE2, HYPELINK, DLFILAPTH, HYPEPATH, MEINCWFT, MEUPLDID, MKLSSTDD, MEUPTIM, ME_Number_of_Checks, ME_Checks_Amount, ME_Number_of_Voids, ME_Voids_Amount, ME_Confirmation_Number, Last_Reconciled_Date, Last_Reconciled_Balance) VALUES ( @PP_Number, @MEBANKID, @Output_Format, @BANKID, @BANKNAME, @BNKBRNCH, @PHONE1, @PHONE2, @HYPELINK, @DLFILAPTH, @HYPEPATH, @MEINCWFT, @MEUPLDID, @MKLSSTDD, @MEUPTIM, @ME_Number_of_Checks, @ME_Checks_Amount, @ME_Number_of_Voids, @ME_Voids_Amount, @ME_Confirmation_Number, @Last_Reconciled_Date, @Last_Reconciled_Balance) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123501SI] TO [DYNGRP]
GO
