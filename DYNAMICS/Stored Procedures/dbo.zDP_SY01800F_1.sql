SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_SY01800F_1] (@CMPANYID_RS smallint, @CMPANYID_RE smallint) AS  set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, Offline_Date, Offline_Time, Offline_Message_Type, Offline_User, DEX_ROW_ID, Offline_Message FROM .SY01800 ORDER BY CMPANYID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, Offline_Date, Offline_Time, Offline_Message_Type, Offline_User, DEX_ROW_ID, Offline_Message FROM .SY01800 WHERE CMPANYID = @CMPANYID_RS ORDER BY CMPANYID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, Offline_Date, Offline_Time, Offline_Message_Type, Offline_User, DEX_ROW_ID, Offline_Message FROM .SY01800 WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE ORDER BY CMPANYID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY01800F_1] TO [DYNGRP]
GO
