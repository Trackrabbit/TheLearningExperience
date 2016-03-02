SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603201SS_1] (@BSSI_CPI_Schedule_ID char(25), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_CPI_Schedule_ID, LNITMSEQ, BSSI_CPI_Date, BSSI_CPI_Index, DEX_ROW_ID FROM .B4603201 WHERE BSSI_CPI_Schedule_ID = @BSSI_CPI_Schedule_ID AND LNITMSEQ = @LNITMSEQ ORDER BY BSSI_CPI_Schedule_ID ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603201SS_1] TO [DYNGRP]
GO
