SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60200L_1] (@INSTRUCTIONID_RS char(15), @CUSTNMBR_RS char(15), @ADRSCODE_RS char(15), @ITEMNMBR_RS char(31), @INSTRUCTIONID_RE char(15), @CUSTNMBR_RE char(15), @ADRSCODE_RE char(15), @ITEMNMBR_RE char(31)) AS  set nocount on IF @INSTRUCTIONID_RS IS NULL BEGIN SELECT TOP 25  INSTRUCTIONID, CUSTNMBR, ADRSCODE, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .SOP60200 ORDER BY INSTRUCTIONID DESC, CUSTNMBR DESC, ADRSCODE DESC, ITEMNMBR DESC END ELSE IF @INSTRUCTIONID_RS = @INSTRUCTIONID_RE BEGIN SELECT TOP 25  INSTRUCTIONID, CUSTNMBR, ADRSCODE, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .SOP60200 WHERE INSTRUCTIONID = @INSTRUCTIONID_RS AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY INSTRUCTIONID DESC, CUSTNMBR DESC, ADRSCODE DESC, ITEMNMBR DESC END ELSE BEGIN SELECT TOP 25  INSTRUCTIONID, CUSTNMBR, ADRSCODE, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .SOP60200 WHERE INSTRUCTIONID BETWEEN @INSTRUCTIONID_RS AND @INSTRUCTIONID_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE ORDER BY INSTRUCTIONID DESC, CUSTNMBR DESC, ADRSCODE DESC, ITEMNMBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60200L_1] TO [DYNGRP]
GO