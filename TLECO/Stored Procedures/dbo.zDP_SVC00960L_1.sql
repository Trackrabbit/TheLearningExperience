SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00960L_1] (@CUSTNMBR_RS char(15), @ADRSCODE_RS char(15), @LASTNAME_RS char(21), @FRSTNAME_RS char(15), @CUSTNMBR_RE char(15), @ADRSCODE_RE char(15), @LASTNAME_RE char(21), @FRSTNAME_RE char(15)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail, DEX_ROW_ID FROM .SVC00960 ORDER BY CUSTNMBR DESC, ADRSCODE DESC, LASTNAME DESC, FRSTNAME DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail, DEX_ROW_ID FROM .SVC00960 WHERE CUSTNMBR = @CUSTNMBR_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND LASTNAME BETWEEN @LASTNAME_RS AND @LASTNAME_RE AND FRSTNAME BETWEEN @FRSTNAME_RS AND @FRSTNAME_RE ORDER BY CUSTNMBR DESC, ADRSCODE DESC, LASTNAME DESC, FRSTNAME DESC END ELSE BEGIN SELECT TOP 25  CUSTNMBR, ADRSCODE, FRSTNAME, LASTNAME, PHONNAME, FAXNUMBR, ANI_Number, EMail, DEX_ROW_ID FROM .SVC00960 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND LASTNAME BETWEEN @LASTNAME_RS AND @LASTNAME_RE AND FRSTNAME BETWEEN @FRSTNAME_RS AND @FRSTNAME_RE ORDER BY CUSTNMBR DESC, ADRSCODE DESC, LASTNAME DESC, FRSTNAME DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00960L_1] TO [DYNGRP]
GO
