SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_NOTESN_1] (@BS int, @ISEQUENCENUMBER_I smallint, @ISEQUENCENUMBER_I_RS smallint, @ISEQUENCENUMBER_I_RE smallint) AS  set nocount on IF @ISEQUENCENUMBER_I_RS IS NULL BEGIN SELECT TOP 25  ISEQUENCENUMBER_I, DEX_ROW_ID, COMMENTS32000_I FROM .NOTES WHERE ( ISEQUENCENUMBER_I > @ISEQUENCENUMBER_I ) ORDER BY ISEQUENCENUMBER_I ASC END ELSE IF @ISEQUENCENUMBER_I_RS = @ISEQUENCENUMBER_I_RE BEGIN SELECT TOP 25  ISEQUENCENUMBER_I, DEX_ROW_ID, COMMENTS32000_I FROM .NOTES WHERE ISEQUENCENUMBER_I = @ISEQUENCENUMBER_I_RS AND ( ISEQUENCENUMBER_I > @ISEQUENCENUMBER_I ) ORDER BY ISEQUENCENUMBER_I ASC END ELSE BEGIN SELECT TOP 25  ISEQUENCENUMBER_I, DEX_ROW_ID, COMMENTS32000_I FROM .NOTES WHERE ISEQUENCENUMBER_I BETWEEN @ISEQUENCENUMBER_I_RS AND @ISEQUENCENUMBER_I_RE AND ( ISEQUENCENUMBER_I > @ISEQUENCENUMBER_I ) ORDER BY ISEQUENCENUMBER_I ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_NOTESN_1] TO [DYNGRP]
GO