SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100400SI] (@BSSI_Rev_Exp_Source_ID char(25), @BSSI_Description char(51), @BSSI_Recog_Acct_Index int, @BSSI_Based_On_Order_Type tinyint, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B7100400 (BSSI_Rev_Exp_Source_ID, BSSI_Description, BSSI_Recog_Acct_Index, BSSI_Based_On_Order_Type, NOTEINDX) VALUES ( @BSSI_Rev_Exp_Source_ID, @BSSI_Description, @BSSI_Recog_Acct_Index, @BSSI_Based_On_Order_Type, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100400SI] TO [DYNGRP]
GO
