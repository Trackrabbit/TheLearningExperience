SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME240444N_1] (@BS int, @CMPANYID smallint, @CHEKBKID char(15), @CMPANYID_RS smallint, @CHEKBKID_RS char(15), @CMPANYID_RE smallint, @CHEKBKID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, CHEKBKID, MEEFTOPTIONS, MEEFTREMFRMT, DEX_ROW_ID FROM .ME240444 WHERE ( CMPANYID = @CMPANYID AND CHEKBKID > @CHEKBKID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, CHEKBKID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, CHEKBKID, MEEFTOPTIONS, MEEFTREMFRMT, DEX_ROW_ID FROM .ME240444 WHERE CMPANYID = @CMPANYID_RS AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND ( CMPANYID = @CMPANYID AND CHEKBKID > @CHEKBKID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, CHEKBKID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, CHEKBKID, MEEFTOPTIONS, MEEFTREMFRMT, DEX_ROW_ID FROM .ME240444 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND ( CMPANYID = @CMPANYID AND CHEKBKID > @CHEKBKID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, CHEKBKID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME240444N_1] TO [DYNGRP]
GO
