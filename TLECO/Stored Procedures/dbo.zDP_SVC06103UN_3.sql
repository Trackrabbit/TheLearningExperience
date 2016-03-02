SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06103UN_3] (@BS int, @TECHID char(11), @TECHID_RS char(11), @TECHID_RE char(11)) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, STATIONID, Status, Route_Sequence, TECHID, STRTDATE, STRTTIME, ENDDATE, ENDTIME, NOTEINDX, DEX_ROW_ID FROM .SVC06103 WHERE ( TECHID > @TECHID ) ORDER BY TECHID ASC, DEX_ROW_ID ASC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, STATIONID, Status, Route_Sequence, TECHID, STRTDATE, STRTTIME, ENDDATE, ENDTIME, NOTEINDX, DEX_ROW_ID FROM .SVC06103 WHERE TECHID = @TECHID_RS AND ( TECHID > @TECHID ) ORDER BY TECHID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  WORECTYPE, WORKORDNUM, STATIONID, Status, Route_Sequence, TECHID, STRTDATE, STRTTIME, ENDDATE, ENDTIME, NOTEINDX, DEX_ROW_ID FROM .SVC06103 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND ( TECHID > @TECHID ) ORDER BY TECHID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06103UN_3] TO [DYNGRP]
GO
