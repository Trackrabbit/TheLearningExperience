SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RM00105SS_1] (@CPRCSTNM char(15)) AS  set nocount on SELECT TOP 1  CPRCSTNM, NAALLOWRECEIPTS, NACREDITCHECK, NAFINANCECHARGE, NAHOLDINACTIVE, NADEFPARENTVEN, NOTEINDX, CREATDDT, MODIFDT, DEX_ROW_ID FROM .RM00105 WHERE CPRCSTNM = @CPRCSTNM ORDER BY CPRCSTNM ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RM00105SS_1] TO [DYNGRP]
GO
