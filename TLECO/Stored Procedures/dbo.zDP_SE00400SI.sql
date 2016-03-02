SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_SE00400SI] (@USERID char(15), @ACTNUMBR_1 char(5), @ACTNUMBR_2 char(5), @ACTNUMBR_3 char(3), @ACTNUMBR_4 char(3), @SE_Zero_NM smallint, @SE_Zero_PB smallint, @NETAMNT numeric(19,5), @PERDBLNC numeric(19,5), @SESORNO1 smallint, @SESORT1 char(11), @OPENYEAR smallint, @ACTINDX int, @DEX_ROW_ID int OUT) AS /* 14.00.0084.000 */ set nocount on BEGIN INSERT INTO .SE00400 (USERID, ACTNUMBR_1, ACTNUMBR_2, ACTNUMBR_3, ACTNUMBR_4, SE_Zero_NM, SE_Zero_PB, NETAMNT, PERDBLNC, SESORNO1, SESORT1, OPENYEAR, ACTINDX) VALUES ( @USERID, @ACTNUMBR_1, @ACTNUMBR_2, @ACTNUMBR_3, @ACTNUMBR_4, @SE_Zero_NM, @SE_Zero_PB, @NETAMNT, @PERDBLNC, @SESORNO1, @SESORT1, @OPENYEAR, @ACTINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_SE00400SI] TO [DYNGRP]
GO