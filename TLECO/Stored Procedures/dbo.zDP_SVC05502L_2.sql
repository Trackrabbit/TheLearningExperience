SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05502L_2] (@SVC_RMA_Reason_Code_Desc_RS char(31), @SVC_RMA_Reason_Code_RS char(3), @SVC_RMA_Reason_Code_Desc_RE char(31), @SVC_RMA_Reason_Code_RE char(3)) AS  set nocount on IF @SVC_RMA_Reason_Code_Desc_RS IS NULL BEGIN SELECT TOP 25  SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, DEX_ROW_ID FROM .SVC05502 ORDER BY SVC_RMA_Reason_Code_Desc DESC, SVC_RMA_Reason_Code DESC, DEX_ROW_ID DESC END ELSE IF @SVC_RMA_Reason_Code_Desc_RS = @SVC_RMA_Reason_Code_Desc_RE BEGIN SELECT TOP 25  SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, DEX_ROW_ID FROM .SVC05502 WHERE SVC_RMA_Reason_Code_Desc = @SVC_RMA_Reason_Code_Desc_RS AND SVC_RMA_Reason_Code BETWEEN @SVC_RMA_Reason_Code_RS AND @SVC_RMA_Reason_Code_RE ORDER BY SVC_RMA_Reason_Code_Desc DESC, SVC_RMA_Reason_Code DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, DEX_ROW_ID FROM .SVC05502 WHERE SVC_RMA_Reason_Code_Desc BETWEEN @SVC_RMA_Reason_Code_Desc_RS AND @SVC_RMA_Reason_Code_Desc_RE AND SVC_RMA_Reason_Code BETWEEN @SVC_RMA_Reason_Code_RS AND @SVC_RMA_Reason_Code_RE ORDER BY SVC_RMA_Reason_Code_Desc DESC, SVC_RMA_Reason_Code DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05502L_2] TO [DYNGRP]
GO
