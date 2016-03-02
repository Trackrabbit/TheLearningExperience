SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40300SI] (@Reason_Code char(15), @Reason_Code_Description char(31), @INACTIVE tinyint, @Types_of_Adj_Var smallint, @Adjustment tinyint, @Variance tinyint, @OFFINDX int, @Item_Transfer tinyint, @InTransit_Transfer tinyint, @Item_Bin_Transfer tinyint, @NOTEINDX numeric(19,5), @CREATDDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .IV40300 (Reason_Code, Reason_Code_Description, INACTIVE, Types_of_Adj_Var, Adjustment, Variance, OFFINDX, Item_Transfer, InTransit_Transfer, Item_Bin_Transfer, NOTEINDX, CREATDDT) VALUES ( @Reason_Code, @Reason_Code_Description, @INACTIVE, @Types_of_Adj_Var, @Adjustment, @Variance, @OFFINDX, @Item_Transfer, @InTransit_Transfer, @Item_Bin_Transfer, @NOTEINDX, @CREATDDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40300SI] TO [DYNGRP]
GO
