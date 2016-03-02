SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40300L_2] (@Reason_Code_Description_RS char(31), @Reason_Code_RS char(15), @Reason_Code_Description_RE char(31), @Reason_Code_RE char(15)) AS  set nocount on IF @Reason_Code_Description_RS IS NULL BEGIN SELECT TOP 25  Reason_Code, Reason_Code_Description, INACTIVE, Types_of_Adj_Var, Adjustment, Variance, OFFINDX, Item_Transfer, InTransit_Transfer, Item_Bin_Transfer, NOTEINDX, CREATDDT, DEX_ROW_ID FROM .IV40300 ORDER BY Reason_Code_Description DESC, Reason_Code DESC, DEX_ROW_ID DESC END ELSE IF @Reason_Code_Description_RS = @Reason_Code_Description_RE BEGIN SELECT TOP 25  Reason_Code, Reason_Code_Description, INACTIVE, Types_of_Adj_Var, Adjustment, Variance, OFFINDX, Item_Transfer, InTransit_Transfer, Item_Bin_Transfer, NOTEINDX, CREATDDT, DEX_ROW_ID FROM .IV40300 WHERE Reason_Code_Description = @Reason_Code_Description_RS AND Reason_Code BETWEEN @Reason_Code_RS AND @Reason_Code_RE ORDER BY Reason_Code_Description DESC, Reason_Code DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  Reason_Code, Reason_Code_Description, INACTIVE, Types_of_Adj_Var, Adjustment, Variance, OFFINDX, Item_Transfer, InTransit_Transfer, Item_Bin_Transfer, NOTEINDX, CREATDDT, DEX_ROW_ID FROM .IV40300 WHERE Reason_Code_Description BETWEEN @Reason_Code_Description_RS AND @Reason_Code_Description_RE AND Reason_Code BETWEEN @Reason_Code_RS AND @Reason_Code_RE ORDER BY Reason_Code_Description DESC, Reason_Code DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40300L_2] TO [DYNGRP]
GO
