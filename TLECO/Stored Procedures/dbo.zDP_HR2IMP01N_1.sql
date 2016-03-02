SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2IMP01N_1] (@BS int, @SEQORDER_I smallint, @DEX_ROW_ID int, @SEQORDER_I_RS smallint, @SEQORDER_I_RE smallint) AS  set nocount on IF @SEQORDER_I_RS IS NULL BEGIN SELECT TOP 25  SEQORDER_I, STRING255_I, DEX_ROW_ID FROM .HR2IMP01 WHERE ( SEQORDER_I = @SEQORDER_I AND DEX_ROW_ID > @DEX_ROW_ID OR SEQORDER_I > @SEQORDER_I ) ORDER BY SEQORDER_I ASC, DEX_ROW_ID ASC END ELSE IF @SEQORDER_I_RS = @SEQORDER_I_RE BEGIN SELECT TOP 25  SEQORDER_I, STRING255_I, DEX_ROW_ID FROM .HR2IMP01 WHERE SEQORDER_I = @SEQORDER_I_RS AND ( SEQORDER_I = @SEQORDER_I AND DEX_ROW_ID > @DEX_ROW_ID OR SEQORDER_I > @SEQORDER_I ) ORDER BY SEQORDER_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SEQORDER_I, STRING255_I, DEX_ROW_ID FROM .HR2IMP01 WHERE SEQORDER_I BETWEEN @SEQORDER_I_RS AND @SEQORDER_I_RE AND ( SEQORDER_I = @SEQORDER_I AND DEX_ROW_ID > @DEX_ROW_ID OR SEQORDER_I > @SEQORDER_I ) ORDER BY SEQORDER_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2IMP01N_1] TO [DYNGRP]
GO
