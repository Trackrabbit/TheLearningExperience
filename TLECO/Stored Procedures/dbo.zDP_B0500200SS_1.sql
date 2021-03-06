SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0500200SS_1] (@BSSI_Fee_Type_ID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Fee_Type_ID, BSSI_Description, BSSI_Fee_Account_Index, NOTEINDX, DEX_ROW_ID FROM .B0500200 WHERE BSSI_Fee_Type_ID = @BSSI_Fee_Type_ID ORDER BY BSSI_Fee_Type_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0500200SS_1] TO [DYNGRP]
GO
