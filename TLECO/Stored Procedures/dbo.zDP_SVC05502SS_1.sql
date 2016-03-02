SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05502SS_1] (@SVC_RMA_Reason_Code char(3)) AS  set nocount on SELECT TOP 1  SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc, DEX_ROW_ID FROM .SVC05502 WHERE SVC_RMA_Reason_Code = @SVC_RMA_Reason_Code ORDER BY SVC_RMA_Reason_Code ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05502SS_1] TO [DYNGRP]
GO
