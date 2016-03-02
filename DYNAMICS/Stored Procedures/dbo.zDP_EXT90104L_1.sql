SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_EXT90104L_1] (@PRODID_RS smallint, @FORMNAME_RS char(79), @WINNAME_RS char(79), @PRODID_RE smallint, @FORMNAME_RE char(79), @WINNAME_RE char(79)) AS set nocount on IF @PRODID_RS IS NULL BEGIN SELECT TOP 25  PRODID, FORMNAME, WINNAME, WINDSPNM, Main_Window_CB, DEX_ROW_ID FROM .EXT90104 ORDER BY PRODID DESC, FORMNAME DESC, WINNAME DESC END ELSE IF @PRODID_RS = @PRODID_RE BEGIN SELECT TOP 25  PRODID, FORMNAME, WINNAME, WINDSPNM, Main_Window_CB, DEX_ROW_ID FROM .EXT90104 WHERE PRODID = @PRODID_RS AND FORMNAME BETWEEN @FORMNAME_RS AND @FORMNAME_RE AND WINNAME BETWEEN @WINNAME_RS AND @WINNAME_RE ORDER BY PRODID DESC, FORMNAME DESC, WINNAME DESC END ELSE BEGIN SELECT TOP 25  PRODID, FORMNAME, WINNAME, WINDSPNM, Main_Window_CB, DEX_ROW_ID FROM .EXT90104 WHERE PRODID BETWEEN @PRODID_RS AND @PRODID_RE AND FORMNAME BETWEEN @FORMNAME_RS AND @FORMNAME_RE AND WINNAME BETWEEN @WINNAME_RS AND @WINNAME_RE ORDER BY PRODID DESC, FORMNAME DESC, WINNAME DESC END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT90104L_1] TO [DYNGRP]
GO
