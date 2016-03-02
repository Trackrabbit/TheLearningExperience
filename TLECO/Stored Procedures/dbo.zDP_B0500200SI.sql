SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500200SI] (@BSSI_Fee_Type_ID char(25), @BSSI_Description char(51), @BSSI_Fee_Account_Index int, @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0500200 (BSSI_Fee_Type_ID, BSSI_Description, BSSI_Fee_Account_Index, NOTEINDX) VALUES ( @BSSI_Fee_Type_ID, @BSSI_Description, @BSSI_Fee_Account_Index, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500200SI] TO [DYNGRP]
GO
