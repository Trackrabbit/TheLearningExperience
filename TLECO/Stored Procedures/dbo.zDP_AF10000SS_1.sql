SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF10000SS_1] (@SEQUENCE1 numeric(19,5)) AS  set nocount on SELECT TOP 1  SEQUENCE1, PPERADSC, PPERADAM, DEX_ROW_ID FROM .AF10000 WHERE SEQUENCE1 = @SEQUENCE1 ORDER BY SEQUENCE1 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF10000SS_1] TO [DYNGRP]
GO