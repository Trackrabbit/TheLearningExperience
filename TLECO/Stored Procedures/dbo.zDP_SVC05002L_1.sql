SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05002L_1] (@RTV_Return_Status_RS char(3), @RTV_Return_Status_RE char(3)) AS  set nocount on IF @RTV_Return_Status_RS IS NULL BEGIN SELECT TOP 25  RTV_Return_Status, STSDESCR, DEX_ROW_ID FROM .SVC05002 ORDER BY RTV_Return_Status DESC END ELSE IF @RTV_Return_Status_RS = @RTV_Return_Status_RE BEGIN SELECT TOP 25  RTV_Return_Status, STSDESCR, DEX_ROW_ID FROM .SVC05002 WHERE RTV_Return_Status = @RTV_Return_Status_RS ORDER BY RTV_Return_Status DESC END ELSE BEGIN SELECT TOP 25  RTV_Return_Status, STSDESCR, DEX_ROW_ID FROM .SVC05002 WHERE RTV_Return_Status BETWEEN @RTV_Return_Status_RS AND @RTV_Return_Status_RE ORDER BY RTV_Return_Status DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05002L_1] TO [DYNGRP]
GO
