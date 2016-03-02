SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_CCA_ActivityN_1] (@BS int, @CMPANYID smallint, @MSO_EngineGUID char(51), @MSO_ACTIVITYID smallint, @USERID char(15), @CMPANYID_RS smallint, @MSO_EngineGUID_RS char(51), @MSO_ACTIVITYID_RS smallint, @USERID_RS char(15), @CMPANYID_RE smallint, @MSO_EngineGUID_RE char(51), @MSO_ACTIVITYID_RE smallint, @USERID_RE char(15)) AS /* 12.00.0311.000 */ set nocount on IF @CMPANYID_RS IS NULL BEGIN SELECT TOP 25  CMPANYID, MSO_EngineGUID, MSO_ACTIVITYID, USERID, DEX_ROW_ID FROM .MSO_CCA_Activity WHERE ( CMPANYID = @CMPANYID AND MSO_EngineGUID = @MSO_EngineGUID AND MSO_ACTIVITYID = @MSO_ACTIVITYID AND USERID > @USERID OR CMPANYID = @CMPANYID AND MSO_EngineGUID = @MSO_EngineGUID AND MSO_ACTIVITYID > @MSO_ACTIVITYID OR CMPANYID = @CMPANYID AND MSO_EngineGUID > @MSO_EngineGUID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, MSO_EngineGUID ASC, MSO_ACTIVITYID ASC, USERID ASC END ELSE IF @CMPANYID_RS = @CMPANYID_RE BEGIN SELECT TOP 25  CMPANYID, MSO_EngineGUID, MSO_ACTIVITYID, USERID, DEX_ROW_ID FROM .MSO_CCA_Activity WHERE CMPANYID = @CMPANYID_RS AND MSO_EngineGUID BETWEEN @MSO_EngineGUID_RS AND @MSO_EngineGUID_RE AND MSO_ACTIVITYID BETWEEN @MSO_ACTIVITYID_RS AND @MSO_ACTIVITYID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( CMPANYID = @CMPANYID AND MSO_EngineGUID = @MSO_EngineGUID AND MSO_ACTIVITYID = @MSO_ACTIVITYID AND USERID > @USERID OR CMPANYID = @CMPANYID AND MSO_EngineGUID = @MSO_EngineGUID AND MSO_ACTIVITYID > @MSO_ACTIVITYID OR CMPANYID = @CMPANYID AND MSO_EngineGUID > @MSO_EngineGUID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, MSO_EngineGUID ASC, MSO_ACTIVITYID ASC, USERID ASC END ELSE BEGIN SELECT TOP 25  CMPANYID, MSO_EngineGUID, MSO_ACTIVITYID, USERID, DEX_ROW_ID FROM .MSO_CCA_Activity WHERE CMPANYID BETWEEN @CMPANYID_RS AND @CMPANYID_RE AND MSO_EngineGUID BETWEEN @MSO_EngineGUID_RS AND @MSO_EngineGUID_RE AND MSO_ACTIVITYID BETWEEN @MSO_ACTIVITYID_RS AND @MSO_ACTIVITYID_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( CMPANYID = @CMPANYID AND MSO_EngineGUID = @MSO_EngineGUID AND MSO_ACTIVITYID = @MSO_ACTIVITYID AND USERID > @USERID OR CMPANYID = @CMPANYID AND MSO_EngineGUID = @MSO_EngineGUID AND MSO_ACTIVITYID > @MSO_ACTIVITYID OR CMPANYID = @CMPANYID AND MSO_EngineGUID > @MSO_EngineGUID OR CMPANYID > @CMPANYID ) ORDER BY CMPANYID ASC, MSO_EngineGUID ASC, MSO_ACTIVITYID ASC, USERID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_CCA_ActivityN_1] TO [DYNGRP]
GO
