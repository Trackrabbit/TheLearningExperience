SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC07500SI] (@TECHID char(11), @USERID char(15), @ACCESSIDLST char(21), @SVC_Last_Conn_DATE datetime, @SVC_Last_Conn_TIME datetime, @SVC_Last_DisConn_DATE datetime, @SVC_Last_DisConn_TIME datetime, @SVC_eTech_Status smallint, @SVC_MAP_Location1 char(61), @SVC_MAP_Location2 char(61), @ACTIVE tinyint, @SVC_LastAccessDate datetime, @SVC_LastAccessTime datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC07500 (TECHID, USERID, ACCESSIDLST, SVC_Last_Conn_DATE, SVC_Last_Conn_TIME, SVC_Last_DisConn_DATE, SVC_Last_DisConn_TIME, SVC_eTech_Status, SVC_MAP_Location1, SVC_MAP_Location2, ACTIVE, SVC_LastAccessDate, SVC_LastAccessTime) VALUES ( @TECHID, @USERID, @ACCESSIDLST, @SVC_Last_Conn_DATE, @SVC_Last_Conn_TIME, @SVC_Last_DisConn_DATE, @SVC_Last_DisConn_TIME, @SVC_eTech_Status, @SVC_MAP_Location1, @SVC_MAP_Location2, @ACTIVE, @SVC_LastAccessDate, @SVC_LastAccessTime) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC07500SI] TO [DYNGRP]
GO
