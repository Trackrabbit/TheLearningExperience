SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL00104SS_2] (@DSTINDX int) AS  set nocount on SELECT TOP 1  ACTINDX, SEPRATR1, DSTINDX, SEPRATR2, BDNINDX, DEX_ROW_ID FROM .GL00104 WHERE DSTINDX = @DSTINDX ORDER BY DSTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00104SS_2] TO [DYNGRP]
GO
