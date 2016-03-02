SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV50300SS_2] (@RANKINGVALUE numeric(19,5), @ITEMNMBR char(31)) AS  set nocount on SELECT TOP 1  ITEMNMBR, ITEMDESC, ITEMTYPE, ABCCODE, SGGSTDABCCD, INCLUDEITEM, QTYONHND, PRCNTOFTTL, CMLTVPRCNTOFTTL, CMLTVPRCNTOFITMS, UNITCOST, RANKINGVALUE, SMMRYDPNDNTUSGQTY, DECPLQTY, DECPLCUR, UPDATED, DEX_ROW_ID FROM .IV50300 WHERE RANKINGVALUE = @RANKINGVALUE AND ITEMNMBR = @ITEMNMBR ORDER BY RANKINGVALUE DESC, ITEMNMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV50300SS_2] TO [DYNGRP]
GO
