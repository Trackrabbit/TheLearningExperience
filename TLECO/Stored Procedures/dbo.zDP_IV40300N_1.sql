SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40300N_1] (@BS int, @Reason_Code char(15), @Reason_Code_RS char(15), @Reason_Code_RE char(15)) AS  set nocount on IF @Reason_Code_RS IS NULL BEGIN SELECT TOP 25  Reason_Code, Reason_Code_Description, INACTIVE, Types_of_Adj_Var, Adjustment, Variance, OFFINDX, Item_Transfer, InTransit_Transfer, Item_Bin_Transfer, NOTEINDX, CREATDDT, DEX_ROW_ID FROM .IV40300 WHERE ( Reason_Code > @Reason_Code ) ORDER BY Reason_Code ASC END ELSE IF @Reason_Code_RS = @Reason_Code_RE BEGIN SELECT TOP 25  Reason_Code, Reason_Code_Description, INACTIVE, Types_of_Adj_Var, Adjustment, Variance, OFFINDX, Item_Transfer, InTransit_Transfer, Item_Bin_Transfer, NOTEINDX, CREATDDT, DEX_ROW_ID FROM .IV40300 WHERE Reason_Code = @Reason_Code_RS AND ( Reason_Code > @Reason_Code ) ORDER BY Reason_Code ASC END ELSE BEGIN SELECT TOP 25  Reason_Code, Reason_Code_Description, INACTIVE, Types_of_Adj_Var, Adjustment, Variance, OFFINDX, Item_Transfer, InTransit_Transfer, Item_Bin_Transfer, NOTEINDX, CREATDDT, DEX_ROW_ID FROM .IV40300 WHERE Reason_Code BETWEEN @Reason_Code_RS AND @Reason_Code_RE AND ( Reason_Code > @Reason_Code ) ORDER BY Reason_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40300N_1] TO [DYNGRP]
GO
