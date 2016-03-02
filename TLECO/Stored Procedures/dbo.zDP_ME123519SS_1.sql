SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123519SS_1] (@Output_Format char(21), @ME_Transaction_Type smallint) AS  set nocount on SELECT TOP 1  Output_Format, ME_Transaction_Type, ME_Trx_Matching_Code, ME_Void_Trx_Amounts_Zero, ME_Omit_Checks_w_Alphas, DEX_ROW_ID FROM .ME123519 WHERE Output_Format = @Output_Format AND ME_Transaction_Type = @ME_Transaction_Type ORDER BY Output_Format ASC, ME_Transaction_Type ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123519SS_1] TO [DYNGRP]
GO
