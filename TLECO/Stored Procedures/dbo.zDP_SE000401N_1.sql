SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SE000401N_1] (@BS int, @USERID char(15), @CURRNIDX smallint, @SEBUDDET smallint, @OPENYEAR smallint, @PERIODID smallint, @SESORT1 char(11), @ACTNUMST char(129), @ACTINDX int, @USERID_RS char(15), @CURRNIDX_RS smallint, @SEBUDDET_RS smallint, @OPENYEAR_RS smallint, @PERIODID_RS smallint, @SESORT1_RS char(11), @ACTNUMST_RS char(129), @ACTINDX_RS int, @USERID_RE char(15), @CURRNIDX_RE smallint, @SEBUDDET_RE smallint, @OPENYEAR_RE smallint, @PERIODID_RE smallint, @SESORT1_RE char(11), @ACTNUMST_RE char(129), @ACTINDX_RE int) AS /* 14.00.0084.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODID, SESORNO1, SESORT1, SE_Zero_NM, SE_Zero_PB, NETAMNT, PERDBLNC, OPENYEAR, CURRNIDX, SEBUDDET, ACTINDX, ACTNUMST, DEX_ROW_ID FROM .SE000401 WHERE ( USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID = @PERIODID AND SESORT1 = @SESORT1 AND ACTNUMST = @ACTNUMST AND ACTINDX > @ACTINDX OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID = @PERIODID AND SESORT1 = @SESORT1 AND ACTNUMST > @ACTNUMST OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID = @PERIODID AND SESORT1 > @SESORT1 OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID > @PERIODID OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR > @OPENYEAR OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET > @SEBUDDET OR USERID = @USERID AND CURRNIDX > @CURRNIDX OR USERID > @USERID ) ORDER BY USERID ASC, CURRNIDX ASC, SEBUDDET ASC, OPENYEAR ASC, PERIODID ASC, SESORT1 ASC, ACTNUMST ASC, ACTINDX ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODID, SESORNO1, SESORT1, SE_Zero_NM, SE_Zero_PB, NETAMNT, PERDBLNC, OPENYEAR, CURRNIDX, SEBUDDET, ACTINDX, ACTNUMST, DEX_ROW_ID FROM .SE000401 WHERE USERID = @USERID_RS AND CURRNIDX BETWEEN @CURRNIDX_RS AND @CURRNIDX_RE AND SEBUDDET BETWEEN @SEBUDDET_RS AND @SEBUDDET_RE AND OPENYEAR BETWEEN @OPENYEAR_RS AND @OPENYEAR_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND SESORT1 BETWEEN @SESORT1_RS AND @SESORT1_RE AND ACTNUMST BETWEEN @ACTNUMST_RS AND @ACTNUMST_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID = @PERIODID AND SESORT1 = @SESORT1 AND ACTNUMST = @ACTNUMST AND ACTINDX > @ACTINDX OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID = @PERIODID AND SESORT1 = @SESORT1 AND ACTNUMST > @ACTNUMST OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID = @PERIODID AND SESORT1 > @SESORT1 OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID > @PERIODID OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR > @OPENYEAR OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET > @SEBUDDET OR USERID = @USERID AND CURRNIDX > @CURRNIDX OR USERID > @USERID ) ORDER BY USERID ASC, CURRNIDX ASC, SEBUDDET ASC, OPENYEAR ASC, PERIODID ASC, SESORT1 ASC, ACTNUMST ASC, ACTINDX ASC END ELSE BEGIN SELECT TOP 25  USERID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODID, SESORNO1, SESORT1, SE_Zero_NM, SE_Zero_PB, NETAMNT, PERDBLNC, OPENYEAR, CURRNIDX, SEBUDDET, ACTINDX, ACTNUMST, DEX_ROW_ID FROM .SE000401 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CURRNIDX BETWEEN @CURRNIDX_RS AND @CURRNIDX_RE AND SEBUDDET BETWEEN @SEBUDDET_RS AND @SEBUDDET_RE AND OPENYEAR BETWEEN @OPENYEAR_RS AND @OPENYEAR_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND SESORT1 BETWEEN @SESORT1_RS AND @SESORT1_RE AND ACTNUMST BETWEEN @ACTNUMST_RS AND @ACTNUMST_RE AND ACTINDX BETWEEN @ACTINDX_RS AND @ACTINDX_RE AND ( USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID = @PERIODID AND SESORT1 = @SESORT1 AND ACTNUMST = @ACTNUMST AND ACTINDX > @ACTINDX OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID = @PERIODID AND SESORT1 = @SESORT1 AND ACTNUMST > @ACTNUMST OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID = @PERIODID AND SESORT1 > @SESORT1 OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID > @PERIODID OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR > @OPENYEAR OR USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET > @SEBUDDET OR USERID = @USERID AND CURRNIDX > @CURRNIDX OR USERID > @USERID ) ORDER BY USERID ASC, CURRNIDX ASC, SEBUDDET ASC, OPENYEAR ASC, PERIODID ASC, SESORT1 ASC, ACTNUMST ASC, ACTINDX ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SE000401N_1] TO [DYNGRP]
GO
