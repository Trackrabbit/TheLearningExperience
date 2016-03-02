SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SE000401L_4] (@USERID_RS char(15), @CURRNIDX_RS smallint, @SEBUDDET_RS smallint, @OPENYEAR_RS smallint, @PERIODID_RS smallint, @SESORT1_RS char(11), @ACTNUMST_RS char(129), @USERID_RE char(15), @CURRNIDX_RE smallint, @SEBUDDET_RE smallint, @OPENYEAR_RE smallint, @PERIODID_RE smallint, @SESORT1_RE char(11), @ACTNUMST_RE char(129)) AS /* 14.00.0084.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODID, SESORNO1, SESORT1, SE_Zero_NM, SE_Zero_PB, NETAMNT, PERDBLNC, OPENYEAR, CURRNIDX, SEBUDDET, ACTINDX, ACTNUMST, DEX_ROW_ID FROM .SE000401 ORDER BY USERID DESC, CURRNIDX DESC, SEBUDDET DESC, OPENYEAR DESC, PERIODID DESC, SESORT1 DESC, ACTNUMST DESC, DEX_ROW_ID DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODID, SESORNO1, SESORT1, SE_Zero_NM, SE_Zero_PB, NETAMNT, PERDBLNC, OPENYEAR, CURRNIDX, SEBUDDET, ACTINDX, ACTNUMST, DEX_ROW_ID FROM .SE000401 WHERE USERID = @USERID_RS AND CURRNIDX BETWEEN @CURRNIDX_RS AND @CURRNIDX_RE AND SEBUDDET BETWEEN @SEBUDDET_RS AND @SEBUDDET_RE AND OPENYEAR BETWEEN @OPENYEAR_RS AND @OPENYEAR_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND SESORT1 BETWEEN @SESORT1_RS AND @SESORT1_RE AND ACTNUMST BETWEEN @ACTNUMST_RS AND @ACTNUMST_RE ORDER BY USERID DESC, CURRNIDX DESC, SEBUDDET DESC, OPENYEAR DESC, PERIODID DESC, SESORT1 DESC, ACTNUMST DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  USERID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODID, SESORNO1, SESORT1, SE_Zero_NM, SE_Zero_PB, NETAMNT, PERDBLNC, OPENYEAR, CURRNIDX, SEBUDDET, ACTINDX, ACTNUMST, DEX_ROW_ID FROM .SE000401 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CURRNIDX BETWEEN @CURRNIDX_RS AND @CURRNIDX_RE AND SEBUDDET BETWEEN @SEBUDDET_RS AND @SEBUDDET_RE AND OPENYEAR BETWEEN @OPENYEAR_RS AND @OPENYEAR_RE AND PERIODID BETWEEN @PERIODID_RS AND @PERIODID_RE AND SESORT1 BETWEEN @SESORT1_RS AND @SESORT1_RE AND ACTNUMST BETWEEN @ACTNUMST_RS AND @ACTNUMST_RE ORDER BY USERID DESC, CURRNIDX DESC, SEBUDDET DESC, OPENYEAR DESC, PERIODID DESC, SESORT1 DESC, ACTNUMST DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SE000401L_4] TO [DYNGRP]
GO
