SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603300SI] (@BSSI_Deposit_Type_ID char(25), @BSSI_Description char(51), @BSSI_Deposit_Account_Num_1 char(5), @BSSI_Deposit_Account_Num_2 char(5), @BSSI_Deposit_Account_Num_3 char(3), @BSSI_Deposit_Account_Num_4 char(3), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4603300 (BSSI_Deposit_Type_ID, BSSI_Description, BSSI_Deposit_Account_Num_1, BSSI_Deposit_Account_Num_2, BSSI_Deposit_Account_Num_3, BSSI_Deposit_Account_Num_4, NOTEINDX) VALUES ( @BSSI_Deposit_Type_ID, @BSSI_Description, @BSSI_Deposit_Account_Num_1, @BSSI_Deposit_Account_Num_2, @BSSI_Deposit_Account_Num_3, @BSSI_Deposit_Account_Num_4, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603300SI] TO [DYNGRP]
GO
