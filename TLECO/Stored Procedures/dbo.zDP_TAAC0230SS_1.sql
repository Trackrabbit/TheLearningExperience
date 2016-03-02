SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_TAAC0230SS_1] (@ACCRUAL_I char(7), @TIMECODE_I char(7)) AS  set nocount on SELECT TOP 1  ACCRUAL_I, TIMECODE_I, DEX_ROW_ID FROM .TAAC0230 WHERE ACCRUAL_I = @ACCRUAL_I AND TIMECODE_I = @TIMECODE_I ORDER BY ACCRUAL_I ASC, TIMECODE_I ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_TAAC0230SS_1] TO [DYNGRP]
GO
