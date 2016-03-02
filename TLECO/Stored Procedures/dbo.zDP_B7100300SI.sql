SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100300SI] (@BSSI_Offering_Type_ID char(25), @BSSI_Description char(51), @BSSI_Rev_Def_Acct_Index int, @BSSI_On_Hold_RevDefIndex int, @BSSI_Exp_Deferral_Index int, @BSSI_On_Hold_ExpDefIndex int, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100300 (BSSI_Offering_Type_ID, BSSI_Description, BSSI_Rev_Def_Acct_Index, BSSI_On_Hold_RevDefIndex, BSSI_Exp_Deferral_Index, BSSI_On_Hold_ExpDefIndex, NOTEINDX) VALUES ( @BSSI_Offering_Type_ID, @BSSI_Description, @BSSI_Rev_Def_Acct_Index, @BSSI_On_Hold_RevDefIndex, @BSSI_Exp_Deferral_Index, @BSSI_On_Hold_ExpDefIndex, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100300SI] TO [DYNGRP]
GO
