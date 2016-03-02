SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40300SS_2] (@Reason_Code_Description char(31), @Reason_Code char(15)) AS  set nocount on SELECT TOP 1  Reason_Code, Reason_Code_Description, INACTIVE, Types_of_Adj_Var, Adjustment, Variance, OFFINDX, Item_Transfer, InTransit_Transfer, Item_Bin_Transfer, NOTEINDX, CREATDDT, DEX_ROW_ID FROM .IV40300 WHERE Reason_Code_Description = @Reason_Code_Description AND Reason_Code = @Reason_Code ORDER BY Reason_Code_Description ASC, Reason_Code ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40300SS_2] TO [DYNGRP]
GO
