SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AF40202N_2] (@BS int, @USERID char(15), @DEX_ROW_ID int, @USERID_RS char(15), @USERID_RE char(15)) AS  set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  USERID, REPORTID, DEX_ROW_ID FROM .AF40202 WHERE ( USERID = @USERID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID > @USERID ) ORDER BY USERID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  USERID, REPORTID, DEX_ROW_ID FROM .AF40202 WHERE USERID = @USERID_RS AND ( USERID = @USERID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID > @USERID ) ORDER BY USERID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  USERID, REPORTID, DEX_ROW_ID FROM .AF40202 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND ( USERID = @USERID AND DEX_ROW_ID > @DEX_ROW_ID OR USERID > @USERID ) ORDER BY USERID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AF40202N_2] TO [DYNGRP]
GO
