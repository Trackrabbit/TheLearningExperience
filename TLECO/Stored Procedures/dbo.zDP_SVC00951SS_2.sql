SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00951SS_2] (@PRDLINE char(21), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  UOMSCHDL, ITEMNMBR, METERED, RTRNABLE, PRDLINE, WARRCDE, MTBF, MTBI, MTTR, RETCOST, SVC_PM_Allowed, SVC_Contractible, SLRWARR, VENDORID, SVC_Use_CurrentCost, DEX_ROW_ID FROM .SVC00951 WHERE PRDLINE = @PRDLINE AND ITEMNMBR = @ITEMNMBR ORDER BY PRDLINE ASC, ITEMNMBR ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00951SS_2] TO [DYNGRP]
GO
