SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL40400SS_2] (@MODULE1 smallint, @ACTINDX int) AS  set nocount on SELECT TOP 1  MODULE1, SQNCLINE, ACTINDX, DEX_ROW_ID FROM .GL40400 WHERE MODULE1 = @MODULE1 AND ACTINDX = @ACTINDX ORDER BY MODULE1 ASC, ACTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL40400SS_2] TO [DYNGRP]
GO