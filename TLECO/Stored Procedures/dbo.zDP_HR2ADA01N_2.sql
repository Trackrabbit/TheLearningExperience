SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HR2ADA01N_2] (@BS int, @REPORTSTO_I char(7), @DEX_ROW_ID int, @REPORTSTO_I_RS char(7), @REPORTSTO_I_RE char(7)) AS  set nocount on IF @REPORTSTO_I_RS IS NULL BEGIN SELECT TOP 25  POSITIONCODE_I, REPORTSTO_I, CHANGEDATE_I, USERID, SIT_I, STAND_I, WALK_I, HEIGHT_I, BALANCEGB_I, BENDGB_I, CLIMBGB_I, CRAWLGB_I, CROUCHGB_I, KNEELGB_I, PUSHGB_I, REACHGB_I, SQUATGB_I, CARRYGB_I_1, CARRYGB_I_2, CARRYGB_I_3, CARRYGB_I_4, CARRYGB_I_5, CARRYGB_I_6, LIFTGB_I_1, LIFTGB_I_2, LIFTGB_I_3, LIFTGB_I_4, LIFTGB_I_5, LIFTGB_I_6, RFOOTGB_I, LFOOTGB_I, RHANDGB_I_1, RHANDGB_I_2, RHANDGB_I_3, LHANDGB_I_1, LHANDGB_I_2, LHANDGB_I_3, DANGERGB_I_1, DANGERGB_I_2, DANGERGB_I_3, DANGERGB_I_4, DANGERGB_I_5, CMNTS1_I, CMNTS2_I, CMNTS3_I, CMNTS4_I, CMNTS5_I, EMPREPRESENT_I, TITLE0_I, IDATE_I, DEX_ROW_ID, JOBPURPOSE_I FROM .HR2ADA01 WHERE ( REPORTSTO_I = @REPORTSTO_I AND DEX_ROW_ID > @DEX_ROW_ID OR REPORTSTO_I > @REPORTSTO_I ) ORDER BY REPORTSTO_I ASC, DEX_ROW_ID ASC END ELSE IF @REPORTSTO_I_RS = @REPORTSTO_I_RE BEGIN SELECT TOP 25  POSITIONCODE_I, REPORTSTO_I, CHANGEDATE_I, USERID, SIT_I, STAND_I, WALK_I, HEIGHT_I, BALANCEGB_I, BENDGB_I, CLIMBGB_I, CRAWLGB_I, CROUCHGB_I, KNEELGB_I, PUSHGB_I, REACHGB_I, SQUATGB_I, CARRYGB_I_1, CARRYGB_I_2, CARRYGB_I_3, CARRYGB_I_4, CARRYGB_I_5, CARRYGB_I_6, LIFTGB_I_1, LIFTGB_I_2, LIFTGB_I_3, LIFTGB_I_4, LIFTGB_I_5, LIFTGB_I_6, RFOOTGB_I, LFOOTGB_I, RHANDGB_I_1, RHANDGB_I_2, RHANDGB_I_3, LHANDGB_I_1, LHANDGB_I_2, LHANDGB_I_3, DANGERGB_I_1, DANGERGB_I_2, DANGERGB_I_3, DANGERGB_I_4, DANGERGB_I_5, CMNTS1_I, CMNTS2_I, CMNTS3_I, CMNTS4_I, CMNTS5_I, EMPREPRESENT_I, TITLE0_I, IDATE_I, DEX_ROW_ID, JOBPURPOSE_I FROM .HR2ADA01 WHERE REPORTSTO_I = @REPORTSTO_I_RS AND ( REPORTSTO_I = @REPORTSTO_I AND DEX_ROW_ID > @DEX_ROW_ID OR REPORTSTO_I > @REPORTSTO_I ) ORDER BY REPORTSTO_I ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  POSITIONCODE_I, REPORTSTO_I, CHANGEDATE_I, USERID, SIT_I, STAND_I, WALK_I, HEIGHT_I, BALANCEGB_I, BENDGB_I, CLIMBGB_I, CRAWLGB_I, CROUCHGB_I, KNEELGB_I, PUSHGB_I, REACHGB_I, SQUATGB_I, CARRYGB_I_1, CARRYGB_I_2, CARRYGB_I_3, CARRYGB_I_4, CARRYGB_I_5, CARRYGB_I_6, LIFTGB_I_1, LIFTGB_I_2, LIFTGB_I_3, LIFTGB_I_4, LIFTGB_I_5, LIFTGB_I_6, RFOOTGB_I, LFOOTGB_I, RHANDGB_I_1, RHANDGB_I_2, RHANDGB_I_3, LHANDGB_I_1, LHANDGB_I_2, LHANDGB_I_3, DANGERGB_I_1, DANGERGB_I_2, DANGERGB_I_3, DANGERGB_I_4, DANGERGB_I_5, CMNTS1_I, CMNTS2_I, CMNTS3_I, CMNTS4_I, CMNTS5_I, EMPREPRESENT_I, TITLE0_I, IDATE_I, DEX_ROW_ID, JOBPURPOSE_I FROM .HR2ADA01 WHERE REPORTSTO_I BETWEEN @REPORTSTO_I_RS AND @REPORTSTO_I_RE AND ( REPORTSTO_I = @REPORTSTO_I AND DEX_ROW_ID > @DEX_ROW_ID OR REPORTSTO_I > @REPORTSTO_I ) ORDER BY REPORTSTO_I ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HR2ADA01N_2] TO [DYNGRP]
GO
