SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_ERB90400N_1] (@BS int, @Data_Connection_ID char(15), @LNITMSEQ int, @Data_Connection_ID_RS char(15), @LNITMSEQ_RS int, @Data_Connection_ID_RE char(15), @LNITMSEQ_RE int) AS set nocount on IF @Data_Connection_ID_RS IS NULL BEGIN SELECT TOP 25  Data_Connection_ID, LNITMSEQ, DEX_ROW_ID FROM .ERB90400 WHERE ( Data_Connection_ID = @Data_Connection_ID AND LNITMSEQ > @LNITMSEQ OR Data_Connection_ID > @Data_Connection_ID ) ORDER BY Data_Connection_ID ASC, LNITMSEQ ASC END ELSE IF @Data_Connection_ID_RS = @Data_Connection_ID_RE BEGIN SELECT TOP 25  Data_Connection_ID, LNITMSEQ, DEX_ROW_ID FROM .ERB90400 WHERE Data_Connection_ID = @Data_Connection_ID_RS AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Data_Connection_ID = @Data_Connection_ID AND LNITMSEQ > @LNITMSEQ OR Data_Connection_ID > @Data_Connection_ID ) ORDER BY Data_Connection_ID ASC, LNITMSEQ ASC END ELSE BEGIN SELECT TOP 25  Data_Connection_ID, LNITMSEQ, DEX_ROW_ID FROM .ERB90400 WHERE Data_Connection_ID BETWEEN @Data_Connection_ID_RS AND @Data_Connection_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( Data_Connection_ID = @Data_Connection_ID AND LNITMSEQ > @LNITMSEQ OR Data_Connection_ID > @Data_Connection_ID ) ORDER BY Data_Connection_ID ASC, LNITMSEQ ASC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_ERB90400N_1] TO [DYNGRP]
GO
