SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123519F_1] (@Output_Format_RS char(21), @ME_Transaction_Type_RS smallint, @Output_Format_RE char(21), @ME_Transaction_Type_RE smallint) AS  set nocount on IF @Output_Format_RS IS NULL BEGIN SELECT TOP 25  Output_Format, ME_Transaction_Type, ME_Trx_Matching_Code, ME_Void_Trx_Amounts_Zero, ME_Omit_Checks_w_Alphas, DEX_ROW_ID FROM .ME123519 ORDER BY Output_Format ASC, ME_Transaction_Type ASC END ELSE IF @Output_Format_RS = @Output_Format_RE BEGIN SELECT TOP 25  Output_Format, ME_Transaction_Type, ME_Trx_Matching_Code, ME_Void_Trx_Amounts_Zero, ME_Omit_Checks_w_Alphas, DEX_ROW_ID FROM .ME123519 WHERE Output_Format = @Output_Format_RS AND ME_Transaction_Type BETWEEN @ME_Transaction_Type_RS AND @ME_Transaction_Type_RE ORDER BY Output_Format ASC, ME_Transaction_Type ASC END ELSE BEGIN SELECT TOP 25  Output_Format, ME_Transaction_Type, ME_Trx_Matching_Code, ME_Void_Trx_Amounts_Zero, ME_Omit_Checks_w_Alphas, DEX_ROW_ID FROM .ME123519 WHERE Output_Format BETWEEN @Output_Format_RS AND @Output_Format_RE AND ME_Transaction_Type BETWEEN @ME_Transaction_Type_RS AND @ME_Transaction_Type_RE ORDER BY Output_Format ASC, ME_Transaction_Type ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123519F_1] TO [DYNGRP]
GO
