SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK010230SS_3] (@SKILLNUMBER_I smallint, @POINTS_I smallint, @EMPID_I char(15)) AS  set nocount on SELECT TOP 1  EMPID_I, SKILLNUMBER_I, PARTWAGE_I, EXPIREDSKILL_I, POINTS_I, DEX_ROW_ID FROM .SK010230 WHERE SKILLNUMBER_I = @SKILLNUMBER_I AND POINTS_I = @POINTS_I AND EMPID_I = @EMPID_I ORDER BY SKILLNUMBER_I ASC, POINTS_I ASC, EMPID_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK010230SS_3] TO [DYNGRP]
GO
