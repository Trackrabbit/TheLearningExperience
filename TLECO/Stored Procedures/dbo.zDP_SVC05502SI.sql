SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05502SI] (@SVC_RMA_Reason_Code char(3), @SVC_RMA_Reason_Code_Desc char(31), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC05502 (SVC_RMA_Reason_Code, SVC_RMA_Reason_Code_Desc) VALUES ( @SVC_RMA_Reason_Code, @SVC_RMA_Reason_Code_Desc) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05502SI] TO [DYNGRP]
GO
