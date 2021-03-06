SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY03003SS_1] (@ACTNUMBR_1 char(9), @ACTNUMBR_2 char(9), @ACTNUMBR_3 char(9), @ACTNUMBR_4 char(9), @ACTNUMBR_5 char(9)) AS  set nocount on SELECT TOP 1  ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, ACTNUMBR_5, DEX_ROW_ID FROM .SY03003 WHERE ACTNUMBR_1 = @ACTNUMBR_1 AND ACTNUMBR_2 = @ACTNUMBR_2 AND ACTNUMBR_3 = @ACTNUMBR_3 AND ACTNUMBR_4 = @ACTNUMBR_4 AND ACTNUMBR_5 = @ACTNUMBR_5 ORDER BY ACTNUMBR_1 ASC, ACTNUMBR_2 ASC, ACTNUMBR_3 ASC, ACTNUMBR_4 ASC, ACTNUMBR_5 ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY03003SS_1] TO [DYNGRP]
GO
