SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC10301N_1] (@BS int, @BACHNUMB char(15), @LineNumber smallint, @BACHNUMB_RS char(15), @LineNumber_RS smallint, @BACHNUMB_RE char(15), @LineNumber_RE smallint) AS  set nocount on IF @BACHNUMB_RS IS NULL BEGIN SELECT TOP 25  BACHNUMB, LineNumber, USERID, EQUIPID, CUSTNMBR, ADRSCODE, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, DEX_ROW_ID FROM .SVC10301 WHERE ( BACHNUMB = @BACHNUMB AND LineNumber > @LineNumber OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, LineNumber ASC END ELSE IF @BACHNUMB_RS = @BACHNUMB_RE BEGIN SELECT TOP 25  BACHNUMB, LineNumber, USERID, EQUIPID, CUSTNMBR, ADRSCODE, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, DEX_ROW_ID FROM .SVC10301 WHERE BACHNUMB = @BACHNUMB_RS AND LineNumber BETWEEN @LineNumber_RS AND @LineNumber_RE AND ( BACHNUMB = @BACHNUMB AND LineNumber > @LineNumber OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, LineNumber ASC END ELSE BEGIN SELECT TOP 25  BACHNUMB, LineNumber, USERID, EQUIPID, CUSTNMBR, ADRSCODE, Meters_1, Meters_2, Meters_3, Meters_4, Meters_5, Dailys_1, Dailys_2, Dailys_3, Dailys_4, Dailys_5, DEX_ROW_ID FROM .SVC10301 WHERE BACHNUMB BETWEEN @BACHNUMB_RS AND @BACHNUMB_RE AND LineNumber BETWEEN @LineNumber_RS AND @LineNumber_RE AND ( BACHNUMB = @BACHNUMB AND LineNumber > @LineNumber OR BACHNUMB > @BACHNUMB ) ORDER BY BACHNUMB ASC, LineNumber ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC10301N_1] TO [DYNGRP]
GO
