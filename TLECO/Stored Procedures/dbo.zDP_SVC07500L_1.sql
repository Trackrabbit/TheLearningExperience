SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07500L_1] (@TECHID_RS char(11), @USERID_RS char(15), @TECHID_RE char(11), @USERID_RE char(15)) AS  set nocount on IF @TECHID_RS IS NULL BEGIN SELECT TOP 25  TECHID, USERID, ACCESSIDLST, SVC_Last_Conn_DATE, SVC_Last_Conn_TIME, SVC_Last_DisConn_DATE, SVC_Last_DisConn_TIME, SVC_eTech_Status, SVC_MAP_Location1, SVC_MAP_Location2, ACTIVE, SVC_LastAccessDate, SVC_LastAccessTime, DEX_ROW_ID FROM .SVC07500 ORDER BY TECHID DESC, USERID DESC END ELSE IF @TECHID_RS = @TECHID_RE BEGIN SELECT TOP 25  TECHID, USERID, ACCESSIDLST, SVC_Last_Conn_DATE, SVC_Last_Conn_TIME, SVC_Last_DisConn_DATE, SVC_Last_DisConn_TIME, SVC_eTech_Status, SVC_MAP_Location1, SVC_MAP_Location2, ACTIVE, SVC_LastAccessDate, SVC_LastAccessTime, DEX_ROW_ID FROM .SVC07500 WHERE TECHID = @TECHID_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY TECHID DESC, USERID DESC END ELSE BEGIN SELECT TOP 25  TECHID, USERID, ACCESSIDLST, SVC_Last_Conn_DATE, SVC_Last_Conn_TIME, SVC_Last_DisConn_DATE, SVC_Last_DisConn_TIME, SVC_eTech_Status, SVC_MAP_Location1, SVC_MAP_Location2, ACTIVE, SVC_LastAccessDate, SVC_LastAccessTime, DEX_ROW_ID FROM .SVC07500 WHERE TECHID BETWEEN @TECHID_RS AND @TECHID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE ORDER BY TECHID DESC, USERID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07500L_1] TO [DYNGRP]
GO
