SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_STN41350N_2] (@BS int, @USER2ENT char(15), @USERID char(15), @DEX_ROW_ID int, @USER2ENT_RS char(15), @USERID_RS char(15), @USER2ENT_RE char(15), @USERID_RE char(15)) AS  set nocount on IF @USER2ENT_RS IS NULL BEGIN SELECT TOP 25  USERID, USER2ENT, DEX_ROW_ID FROM .STN41350 WHERE ( USER2ENT = @USER2ENT AND USERID = @USERID AND DEX_ROW_ID > @DEX_ROW_ID OR USER2ENT = @USER2ENT AND USERID > @USERID OR USER2ENT > @USER2ENT ) ORDER BY USER2ENT ASC, USERID ASC, DEX_ROW_ID ASC END ELSE IF @USER2ENT_RS = @USER2ENT_RE BEGIN SELECT TOP 25  USERID, USER2ENT, DEX_ROW_ID FROM .STN41350 WHERE USER2ENT = @USER2ENT_RS AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( USER2ENT = @USER2ENT AND USERID = @USERID AND DEX_ROW_ID > @DEX_ROW_ID OR USER2ENT = @USER2ENT AND USERID > @USERID OR USER2ENT > @USER2ENT ) ORDER BY USER2ENT ASC, USERID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, USER2ENT, DEX_ROW_ID FROM .STN41350 WHERE USER2ENT BETWEEN @USER2ENT_RS AND @USER2ENT_RE AND USERID BETWEEN @USERID_RS AND @USERID_RE AND ( USER2ENT = @USER2ENT AND USERID = @USERID AND DEX_ROW_ID > @DEX_ROW_ID OR USER2ENT = @USER2ENT AND USERID > @USERID OR USER2ENT > @USER2ENT ) ORDER BY USER2ENT ASC, USERID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_STN41350N_2] TO [DYNGRP]
GO