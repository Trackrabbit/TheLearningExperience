SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05502SS_2] (@SVC_RMA_Reason_Code_Desc char(31), @SVC_RMA_Reason_Code char(3)) AS  set nocount on SELECT TOP 1  SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, DEX_ROW_ID FROM .SVC05502 WHERE SVC_RMA_Reason_Code_Desc = @SVC_RMA_Reason_Code_Desc AND SVC_RMA_Reason_Code = @SVC_RMA_Reason_Code ORDER BY SVC_RMA_Reason_Code_Desc ASC, SVC_RMA_Reason_Code ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05502SS_2] TO [DYNGRP]
GO
