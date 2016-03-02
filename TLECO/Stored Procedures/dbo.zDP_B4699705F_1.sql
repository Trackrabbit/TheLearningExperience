SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4699705F_1] (@USERID_RS char(15), @SOPTYPE_RS smallint, @SOPNUMBE_RS char(21), @USERID_RE char(15), @SOPTYPE_RE smallint, @SOPNUMBE_RE char(21)) AS /* 12.00.0270.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, SOPTYPE, SOPNUMBE, DEX_ROW_ID FROM .B4699705 ORDER BY USERID ASC, SOPTYPE ASC, SOPNUMBE ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, SOPTYPE, SOPNUMBE, DEX_ROW_ID FROM .B4699705 WHERE USERID = @USERID_RS AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE ORDER BY USERID ASC, SOPTYPE ASC, SOPNUMBE ASC END ELSE BEGIN SELECT TOP 25  USERID, SOPTYPE, SOPNUMBE, DEX_ROW_ID FROM .B4699705 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND SOPTYPE BETWEEN @SOPTYPE_RS AND @SOPTYPE_RE AND SOPNUMBE BETWEEN @SOPNUMBE_RS AND @SOPNUMBE_RE ORDER BY USERID ASC, SOPTYPE ASC, SOPNUMBE ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4699705F_1] TO [DYNGRP]
GO