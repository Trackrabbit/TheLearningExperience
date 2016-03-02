SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05002UN_2] (@BS int, @STSDESCR char(31), @STSDESCR_RS char(31), @STSDESCR_RE char(31)) AS  set nocount on IF @STSDESCR_RS IS NULL BEGIN SELECT TOP 25  RTV_Return_Status, STSDESCR, DEX_ROW_ID FROM .SVC05002 WHERE ( STSDESCR > @STSDESCR ) ORDER BY STSDESCR ASC, DEX_ROW_ID ASC END ELSE IF @STSDESCR_RS = @STSDESCR_RE BEGIN SELECT TOP 25  RTV_Return_Status, STSDESCR, DEX_ROW_ID FROM .SVC05002 WHERE STSDESCR = @STSDESCR_RS AND ( STSDESCR > @STSDESCR ) ORDER BY STSDESCR ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  RTV_Return_Status, STSDESCR, DEX_ROW_ID FROM .SVC05002 WHERE STSDESCR BETWEEN @STSDESCR_RS AND @STSDESCR_RE AND ( STSDESCR > @STSDESCR ) ORDER BY STSDESCR ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05002UN_2] TO [DYNGRP]
GO
