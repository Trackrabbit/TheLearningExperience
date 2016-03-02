SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT80100L_1] (@USERID_RS char(15), @CMPANYID_RS smallint, @Tag_RS smallint, @USERID_RE char(15), @CMPANYID_RE smallint, @Tag_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CMPANYID, Extender_Type, Extender_ID, Tag, DEX_ROW_ID FROM .EXT80100 ORDER BY USERID DESC, CMPANYID DESC, Tag DESC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CMPANYID, Extender_Type, Extender_ID, Tag, DEX_ROW_ID FROM .EXT80100 WHERE USERID = @USERID_RS AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND Tag BETWEEN @Tag_RS AND @Tag_RE ORDER BY USERID DESC, CMPANYID DESC, Tag DESC END ELSE BEGIN SELECT TOP 25  USERID, CMPANYID, Extender_Type, Extender_ID, Tag, DEX_ROW_ID FROM .EXT80100 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND Tag BETWEEN @Tag_RS AND @Tag_RE ORDER BY USERID DESC, CMPANYID DESC, Tag DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT80100L_1] TO [DYNGRP]
GO
