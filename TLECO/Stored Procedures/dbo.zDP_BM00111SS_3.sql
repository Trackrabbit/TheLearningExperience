SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM00111SS_3] (@ITEMNMBR char(31), @Bill_Status smallint, @Status_Ord int, @Component_Status smallint, @ORD int) AS  set nocount on SELECT TOP 1  ITEMNMBR, Bill_Status, Status_Ord, ORD, CMPTITNM, Component_Status, BM_Comp_State, Cost_Type, Design_Qty, Scrap_Percentage, Effective_Date, Obsolete_Date, UOFM, NOTEINDX, DEX_ROW_ID FROM .BM00111 WHERE ITEMNMBR = @ITEMNMBR AND Bill_Status = @Bill_Status AND Status_Ord = @Status_Ord AND Component_Status = @Component_Status AND ORD = @ORD ORDER BY ITEMNMBR ASC, Bill_Status ASC, Status_Ord ASC, Component_Status ASC, ORD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM00111SS_3] TO [DYNGRP]
GO
