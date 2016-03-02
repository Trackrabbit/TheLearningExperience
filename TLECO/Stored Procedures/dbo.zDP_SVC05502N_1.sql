SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05502N_1] (@BS int, @SVC_RMA_Reason_Code char(3), @SVC_RMA_Reason_Code_RS char(3), @SVC_RMA_Reason_Code_RE char(3)) AS  set nocount on IF @SVC_RMA_Reason_Code_RS IS NULL BEGIN SELECT TOP 25  SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, DEX_ROW_ID FROM .SVC05502 WHERE ( SVC_RMA_Reason_Code > @SVC_RMA_Reason_Code ) ORDER BY SVC_RMA_Reason_Code ASC END ELSE IF @SVC_RMA_Reason_Code_RS = @SVC_RMA_Reason_Code_RE BEGIN SELECT TOP 25  SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, DEX_ROW_ID FROM .SVC05502 WHERE SVC_RMA_Reason_Code = @SVC_RMA_Reason_Code_RS AND ( SVC_RMA_Reason_Code > @SVC_RMA_Reason_Code ) ORDER BY SVC_RMA_Reason_Code ASC END ELSE BEGIN SELECT TOP 25  SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, DEX_ROW_ID FROM .SVC05502 WHERE SVC_RMA_Reason_Code BETWEEN @SVC_RMA_Reason_Code_RS AND @SVC_RMA_Reason_Code_RE AND ( SVC_RMA_Reason_Code > @SVC_RMA_Reason_Code ) ORDER BY SVC_RMA_Reason_Code ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05502N_1] TO [DYNGRP]
GO
