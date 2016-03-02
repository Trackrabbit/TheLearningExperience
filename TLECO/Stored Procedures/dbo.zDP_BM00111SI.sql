SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM00111SI] (@ITEMNMBR char(31), @Bill_Status smallint, @Status_Ord int, @ORD int, @CMPTITNM char(31), @Component_Status smallint, @BM_Comp_State smallint, @Cost_Type smallint, @Design_Qty numeric(19,5), @Scrap_Percentage smallint, @Effective_Date datetime, @Obsolete_Date datetime, @UOFM char(9), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .BM00111 (ITEMNMBR, Bill_Status, Status_Ord, ORD, CMPTITNM, Component_Status, BM_Comp_State, Cost_Type, Design_Qty, Scrap_Percentage, Effective_Date, Obsolete_Date, UOFM, NOTEINDX) VALUES ( @ITEMNMBR, @Bill_Status, @Status_Ord, @ORD, @CMPTITNM, @Component_Status, @BM_Comp_State, @Cost_Type, @Design_Qty, @Scrap_Percentage, @Effective_Date, @Obsolete_Date, @UOFM, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM00111SI] TO [DYNGRP]
GO
