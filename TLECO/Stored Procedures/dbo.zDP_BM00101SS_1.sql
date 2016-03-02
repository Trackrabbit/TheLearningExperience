SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM00101SS_1] (@ITEMNMBR char(31), @Bill_Status smallint, @Status_Ord int) AS  set nocount on SELECT TOP 1  ITEMNMBR, Bill_Status, Status_Ord, BM_Stock_Method, Effective_Date, Obsolete_Date, UOFM, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_ID FROM .BM00101 WHERE ITEMNMBR = @ITEMNMBR AND Bill_Status = @Bill_Status AND Status_Ord = @Status_Ord ORDER BY ITEMNMBR ASC, Bill_Status ASC, Status_Ord ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM00101SS_1] TO [DYNGRP]
GO
