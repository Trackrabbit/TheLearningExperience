SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603700SS_2] (@DSCRIPTN char(31)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Priority_Code_ID, DSCRIPTN, NOTEINDX, DEX_ROW_ID FROM .B4603700 WHERE DSCRIPTN = @DSCRIPTN ORDER BY DSCRIPTN ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603700SS_2] TO [DYNGRP]
GO
