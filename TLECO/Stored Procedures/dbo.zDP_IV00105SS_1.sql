SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00105SS_1] (@ITEMNMBR char(31), @CURNCYID char(15)) AS  set nocount on SELECT TOP 1  ITEMNMBR, CURNCYID, CURRNIDX, DECPLCUR, LISTPRCE, DEX_ROW_ID FROM .IV00105 WHERE ITEMNMBR = @ITEMNMBR AND CURNCYID = @CURNCYID ORDER BY ITEMNMBR ASC, CURNCYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00105SS_1] TO [DYNGRP]
GO