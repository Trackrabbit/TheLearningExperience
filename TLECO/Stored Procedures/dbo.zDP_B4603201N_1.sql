SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4603201N_1] (@BS int, @BSSI_CPI_Schedule_ID char(25), @LNITMSEQ int, @BSSI_CPI_Schedule_ID_RS char(25), @LNITMSEQ_RS int, @BSSI_CPI_Schedule_ID_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_CPI_Schedule_ID_RS IS NULL BEGIN SELECT TOP 25  BSSI_CPI_Schedule_ID, LNITMSEQ, BSSI_CPI_Date, BSSI_CPI_Index, DEX_ROW_ID FROM .B4603201 WHERE ( BSSI_CPI_Schedule_ID = @BSSI_CPI_Schedule_ID AND LNITMSEQ > @LNITMSEQ OR BSSI_CPI_Schedule_ID > @BSSI_CPI_Schedule_ID ) ORDER BY BSSI_CPI_Schedule_ID ASC, LNITMSEQ ASC END ELSE IF @BSSI_CPI_Schedule_ID_RS = @BSSI_CPI_Schedule_ID_RE BEGIN SELECT TOP 25  BSSI_CPI_Schedule_ID, LNITMSEQ, BSSI_CPI_Date, BSSI_CPI_Index, DEX_ROW_ID FROM .B4603201 WHERE BSSI_CPI_Schedule_ID = @BSSI_CPI_Schedule_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( BSSI_CPI_Schedule_ID = @BSSI_CPI_Schedule_ID AND LNITMSEQ > @LNITMSEQ OR BSSI_CPI_Schedule_ID > @BSSI_CPI_Schedule_ID ) ORDER BY BSSI_CPI_Schedule_ID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  BSSI_CPI_Schedule_ID, LNITMSEQ, BSSI_CPI_Date, BSSI_CPI_Index, DEX_ROW_ID FROM .B4603201 WHERE BSSI_CPI_Schedule_ID BETWEEN @BSSI_CPI_Schedule_ID_RS AND @BSSI_CPI_Schedule_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( BSSI_CPI_Schedule_ID = @BSSI_CPI_Schedule_ID AND LNITMSEQ > @LNITMSEQ OR BSSI_CPI_Schedule_ID > @BSSI_CPI_Schedule_ID ) ORDER BY BSSI_CPI_Schedule_ID ASC, LNITMSEQ ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4603201N_1] TO [DYNGRP]
GO