SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SK010230SS_1] (@EMPID_I char(15), @SKILLNUMBER_I smallint) AS  set nocount on SELECT TOP 1  EMPID_I, SKILLNUMBER_I, PARTWAGE_I, EXPIREDSKILL_I, POINTS_I, DEX_ROW_ID FROM .SK010230 WHERE EMPID_I = @EMPID_I AND SKILLNUMBER_I = @SKILLNUMBER_I ORDER BY EMPID_I ASC, SKILLNUMBER_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SK010230SS_1] TO [DYNGRP]
GO
