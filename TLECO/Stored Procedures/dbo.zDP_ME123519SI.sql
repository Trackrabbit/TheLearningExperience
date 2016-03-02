SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_ME123519SI] (@Output_Format char(21), @ME_Transaction_Type smallint, @ME_Trx_Matching_Code char(21), @ME_Void_Trx_Amounts_Zero tinyint, @ME_Omit_Checks_w_Alphas tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .ME123519 (Output_Format, ME_Transaction_Type, ME_Trx_Matching_Code, ME_Void_Trx_Amounts_Zero, ME_Omit_Checks_w_Alphas) VALUES ( @Output_Format, @ME_Transaction_Type, @ME_Trx_Matching_Code, @ME_Void_Trx_Amounts_Zero, @ME_Omit_Checks_w_Alphas) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_ME123519SI] TO [DYNGRP]
GO
