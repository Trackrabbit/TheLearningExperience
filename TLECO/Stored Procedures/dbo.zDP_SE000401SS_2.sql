SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SE000401SS_2] (@USERID char(15), @CURRNIDX smallint, @SEBUDDET smallint, @OPENYEAR smallint, @PERIODID smallint, @SE_Zero_NM smallint, @SESORT1 char(11), @ACTNUMST char(129)) AS /* 14.00.0084.000 */ set nocount on SELECT TOP 1  USERID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, PERIODID, SESORNO1, SESORT1, SE_Zero_NM, SE_Zero_PB, NETAMNT, PERDBLNC, OPENYEAR, CURRNIDX, SEBUDDET, ACTINDX, ACTNUMST, DEX_ROW_ID FROM .SE000401 WHERE USERID = @USERID AND CURRNIDX = @CURRNIDX AND SEBUDDET = @SEBUDDET AND OPENYEAR = @OPENYEAR AND PERIODID = @PERIODID AND SE_Zero_NM = @SE_Zero_NM AND SESORT1 = @SESORT1 AND ACTNUMST = @ACTNUMST ORDER BY USERID ASC, CURRNIDX ASC, SEBUDDET ASC, OPENYEAR ASC, PERIODID ASC, SE_Zero_NM ASC, SESORT1 ASC, ACTNUMST ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SE000401SS_2] TO [DYNGRP]
GO
