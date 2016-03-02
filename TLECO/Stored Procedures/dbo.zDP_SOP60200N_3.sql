SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60200N_3] (@BS int, @INSTRUCTIONID char(15), @SEQNUMBR int, @DEX_ROW_ID int, @INSTRUCTIONID_RS char(15), @SEQNUMBR_RS int, @INSTRUCTIONID_RE char(15), @SEQNUMBR_RE int) AS  set nocount on IF @INSTRUCTIONID_RS IS NULL BEGIN SELECT TOP 25  INSTRUCTIONID, CUSTNMBR, ADRSCODE, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .SOP60200 WHERE ( INSTRUCTIONID = @INSTRUCTIONID AND SEQNUMBR = @SEQNUMBR AND DEX_ROW_ID > @DEX_ROW_ID OR INSTRUCTIONID = @INSTRUCTIONID AND SEQNUMBR > @SEQNUMBR OR INSTRUCTIONID > @INSTRUCTIONID ) ORDER BY INSTRUCTIONID ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE IF @INSTRUCTIONID_RS = @INSTRUCTIONID_RE BEGIN SELECT TOP 25  INSTRUCTIONID, CUSTNMBR, ADRSCODE, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .SOP60200 WHERE INSTRUCTIONID = @INSTRUCTIONID_RS AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( INSTRUCTIONID = @INSTRUCTIONID AND SEQNUMBR = @SEQNUMBR AND DEX_ROW_ID > @DEX_ROW_ID OR INSTRUCTIONID = @INSTRUCTIONID AND SEQNUMBR > @SEQNUMBR OR INSTRUCTIONID > @INSTRUCTIONID ) ORDER BY INSTRUCTIONID ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  INSTRUCTIONID, CUSTNMBR, ADRSCODE, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .SOP60200 WHERE INSTRUCTIONID BETWEEN @INSTRUCTIONID_RS AND @INSTRUCTIONID_RE AND SEQNUMBR BETWEEN @SEQNUMBR_RS AND @SEQNUMBR_RE AND ( INSTRUCTIONID = @INSTRUCTIONID AND SEQNUMBR = @SEQNUMBR AND DEX_ROW_ID > @DEX_ROW_ID OR INSTRUCTIONID = @INSTRUCTIONID AND SEQNUMBR > @SEQNUMBR OR INSTRUCTIONID > @INSTRUCTIONID ) ORDER BY INSTRUCTIONID ASC, SEQNUMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60200N_3] TO [DYNGRP]
GO