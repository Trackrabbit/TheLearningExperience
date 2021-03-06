SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00951SI] (@UOMSCHDL char(11), @ITEMNMBR char(31), @METERED tinyint, @RTRNABLE tinyint, @PRDLINE char(21), @WARRCDE char(11), @MTBF numeric(19,5), @MTBI numeric(19,5), @MTTR numeric(19,5), @RETCOST numeric(19,5), @SVC_PM_Allowed tinyint, @SVC_Contractible tinyint, @SLRWARR char(11), @VENDORID char(15), @SVC_Use_CurrentCost tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00951 (UOMSCHDL, ITEMNMBR, METERED, RTRNABLE, PRDLINE, WARRCDE, MTBF, MTBI, MTTR, RETCOST, SVC_PM_Allowed, SVC_Contractible, SLRWARR, VENDORID, SVC_Use_CurrentCost) VALUES ( @UOMSCHDL, @ITEMNMBR, @METERED, @RTRNABLE, @PRDLINE, @WARRCDE, @MTBF, @MTBI, @MTTR, @RETCOST, @SVC_PM_Allowed, @SVC_Contractible, @SLRWARR, @VENDORID, @SVC_Use_CurrentCost) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00951SI] TO [DYNGRP]
GO
