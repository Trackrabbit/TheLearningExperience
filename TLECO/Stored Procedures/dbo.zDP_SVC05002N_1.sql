SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05002N_1] (@BS int, @RTV_Return_Status char(3), @RTV_Return_Status_RS char(3), @RTV_Return_Status_RE char(3)) AS  set nocount on IF @RTV_Return_Status_RS IS NULL BEGIN SELECT TOP 25  RTV_Return_Status, STSDESCR, DEX_ROW_ID FROM .SVC05002 WHERE ( RTV_Return_Status > @RTV_Return_Status ) ORDER BY RTV_Return_Status ASC END ELSE IF @RTV_Return_Status_RS = @RTV_Return_Status_RE BEGIN SELECT TOP 25  RTV_Return_Status, STSDESCR, DEX_ROW_ID FROM .SVC05002 WHERE RTV_Return_Status = @RTV_Return_Status_RS AND ( RTV_Return_Status > @RTV_Return_Status ) ORDER BY RTV_Return_Status ASC END ELSE BEGIN SELECT TOP 25  RTV_Return_Status, STSDESCR, DEX_ROW_ID FROM .SVC05002 WHERE RTV_Return_Status BETWEEN @RTV_Return_Status_RS AND @RTV_Return_Status_RE AND ( RTV_Return_Status > @RTV_Return_Status ) ORDER BY RTV_Return_Status ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05002N_1] TO [DYNGRP]
GO
