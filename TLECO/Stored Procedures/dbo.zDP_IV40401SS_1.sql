SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV40401SS_1] (@ITMCLSCD char(11), @CURNCYID char(15)) AS  set nocount on SELECT TOP 1  ITMCLSCD, CURNCYID, DECPLCUR, DEX_ROW_ID FROM .IV40401 WHERE ITMCLSCD = @ITMCLSCD AND CURNCYID = @CURNCYID ORDER BY ITMCLSCD ASC, CURNCYID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV40401SS_1] TO [DYNGRP]
GO