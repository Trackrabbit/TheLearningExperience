SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC00300SS_2] (@CURNCYID char(15), @ACTINDX int) AS  set nocount on SELECT TOP 1  ACTINDX, CURNCYID, CURRNIDX, HSTRCLRT, DEX_ROW_ID FROM .MC00300 WHERE CURNCYID = @CURNCYID AND ACTINDX = @ACTINDX ORDER BY CURNCYID ASC, ACTINDX ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC00300SS_2] TO [DYNGRP]
GO