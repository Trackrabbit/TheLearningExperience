SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_DTA00300SS_1] (@ACTINDX int, @GROUPID char(15)) AS  set nocount on SELECT TOP 1  ACTINDX, GROUPID, DTA_Quantities, ACCTSTAT, DECPLQTY, DEX_ROW_ID FROM .DTA00300 WHERE ACTINDX = @ACTINDX AND GROUPID = @GROUPID ORDER BY ACTINDX ASC, GROUPID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DTA00300SS_1] TO [DYNGRP]
GO