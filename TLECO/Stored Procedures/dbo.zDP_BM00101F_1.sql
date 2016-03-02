SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BM00101F_1] (@ITEMNMBR_RS char(31), @Bill_Status_RS smallint, @Status_Ord_RS int, @ITEMNMBR_RE char(31), @Bill_Status_RE smallint, @Status_Ord_RE int) AS  set nocount on IF @ITEMNMBR_RS IS NULL BEGIN SELECT TOP 25  ITEMNMBR, Bill_Status, Status_Ord, BM_Stock_Method, Effective_Date, Obsolete_Date, UOFM, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_ID FROM .BM00101 ORDER BY ITEMNMBR ASC, Bill_Status ASC, Status_Ord ASC END ELSE IF @ITEMNMBR_RS = @ITEMNMBR_RE BEGIN SELECT TOP 25  ITEMNMBR, Bill_Status, Status_Ord, BM_Stock_Method, Effective_Date, Obsolete_Date, UOFM, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_ID FROM .BM00101 WHERE ITEMNMBR = @ITEMNMBR_RS AND Bill_Status BETWEEN @Bill_Status_RS AND @Bill_Status_RE AND Status_Ord BETWEEN @Status_Ord_RS AND @Status_Ord_RE ORDER BY ITEMNMBR ASC, Bill_Status ASC, Status_Ord ASC END ELSE BEGIN SELECT TOP 25  ITEMNMBR, Bill_Status, Status_Ord, BM_Stock_Method, Effective_Date, Obsolete_Date, UOFM, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_ID FROM .BM00101 WHERE ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND Bill_Status BETWEEN @Bill_Status_RS AND @Bill_Status_RE AND Status_Ord BETWEEN @Status_Ord_RS AND @Status_Ord_RE ORDER BY ITEMNMBR ASC, Bill_Status ASC, Status_Ord ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BM00101F_1] TO [DYNGRP]
GO
