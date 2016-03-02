SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP60200UN_5] (@BS int, @ADRSCODE char(15), @ITEMNMBR char(31), @CUSTNMBR char(15), @ADRSCODE_RS char(15), @ITEMNMBR_RS char(31), @CUSTNMBR_RS char(15), @ADRSCODE_RE char(15), @ITEMNMBR_RE char(31), @CUSTNMBR_RE char(15)) AS  set nocount on IF @ADRSCODE_RS IS NULL BEGIN SELECT TOP 25  INSTRUCTIONID, CUSTNMBR, ADRSCODE, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .SOP60200 WHERE ( ADRSCODE = @ADRSCODE AND ITEMNMBR = @ITEMNMBR AND CUSTNMBR > @CUSTNMBR OR ADRSCODE = @ADRSCODE AND ITEMNMBR > @ITEMNMBR OR ADRSCODE > @ADRSCODE ) ORDER BY ADRSCODE ASC, ITEMNMBR ASC, CUSTNMBR ASC, DEX_ROW_ID ASC END ELSE IF @ADRSCODE_RS = @ADRSCODE_RE BEGIN SELECT TOP 25  INSTRUCTIONID, CUSTNMBR, ADRSCODE, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .SOP60200 WHERE ADRSCODE = @ADRSCODE_RS AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ( ADRSCODE = @ADRSCODE AND ITEMNMBR = @ITEMNMBR AND CUSTNMBR > @CUSTNMBR OR ADRSCODE = @ADRSCODE AND ITEMNMBR > @ITEMNMBR OR ADRSCODE > @ADRSCODE ) ORDER BY ADRSCODE ASC, ITEMNMBR ASC, CUSTNMBR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  INSTRUCTIONID, CUSTNMBR, ADRSCODE, ITEMNMBR, SEQNUMBR, DEX_ROW_ID FROM .SOP60200 WHERE ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ITEMNMBR BETWEEN @ITEMNMBR_RS AND @ITEMNMBR_RE AND CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ( ADRSCODE = @ADRSCODE AND ITEMNMBR = @ITEMNMBR AND CUSTNMBR > @CUSTNMBR OR ADRSCODE = @ADRSCODE AND ITEMNMBR > @ITEMNMBR OR ADRSCODE > @ADRSCODE ) ORDER BY ADRSCODE ASC, ITEMNMBR ASC, CUSTNMBR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP60200UN_5] TO [DYNGRP]
GO
