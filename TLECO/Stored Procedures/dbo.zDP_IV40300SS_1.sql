SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40300SS_1] (@Reason_Code char(15)) AS  set nocount on SELECT TOP 1  Reason_Code, Reason_Code_Description, INACTIVE, Types_of_Adj_Var, Adjustment, Variance, OFFINDX, Item_Transfer, InTransit_Transfer, Item_Bin_Transfer, NOTEINDX, CREATDDT, DEX_ROW_ID FROM .IV40300 WHERE Reason_Code = @Reason_Code ORDER BY Reason_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40300SS_1] TO [DYNGRP]
GO
