SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL00104SS_3] (@BDNINDX int) AS  set nocount on SELECT TOP 1  ACTINDX, SEPRATR1, DSTINDX, SEPRATR2, BDNINDX, DEX_ROW_ID FROM .GL00104 WHERE BDNINDX = @BDNINDX ORDER BY BDNINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL00104SS_3] TO [DYNGRP]
GO
