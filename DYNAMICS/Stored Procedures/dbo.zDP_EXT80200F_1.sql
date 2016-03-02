SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_EXT80200F_1] (@USERID_RS char(15), @CMPANYID_RS smallint, @Extender_Type_RS smallint, @Window_Number_RS smallint, @USERID_RE char(15), @CMPANYID_RE smallint, @Extender_Type_RE smallint, @Window_Number_RE smallint) AS /* 12.00.0311.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, CMPANYID, Extender_Type, Extender_ID, Window_Number, Tag, DEX_ROW_ID FROM .EXT80200 ORDER BY USERID ASC, CMPANYID ASC, Extender_Type ASC, Window_Number ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, CMPANYID, Extender_Type, Extender_ID, Window_Number, Tag, DEX_ROW_ID FROM .EXT80200 WHERE USERID = @USERID_RS AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE ORDER BY USERID ASC, CMPANYID ASC, Extender_Type ASC, Window_Number ASC END ELSE BEGIN SELECT TOP 25  USERID, CMPANYID, Extender_Type, Extender_ID, Window_Number, Tag, DEX_ROW_ID FROM .EXT80200 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND Extender_Type BETWEEN @Extender_Type_RS AND @Extender_Type_RE AND Window_Number BETWEEN @Window_Number_RS AND @Window_Number_RE ORDER BY USERID ASC, CMPANYID ASC, Extender_Type ASC, Window_Number ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_EXT80200F_1] TO [DYNGRP]
GO
