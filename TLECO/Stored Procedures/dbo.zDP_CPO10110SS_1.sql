SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CPO10110SS_1] (@PONUMBER char(17), @ORD int) AS  set nocount on SELECT TOP 1  PONUMBER, ORD, ACTINDX, REQDATE, VENDORID, APPROVL, Committed_Amount, POLNESTA, QTYCANCE, UNITCOST, PostedSubtotal, DEX_ROW_ID FROM .CPO10110 WHERE PONUMBER = @PONUMBER AND ORD = @ORD ORDER BY PONUMBER ASC, ORD ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CPO10110SS_1] TO [DYNGRP]
GO
