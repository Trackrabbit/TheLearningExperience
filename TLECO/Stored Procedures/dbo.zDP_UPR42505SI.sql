SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR42505SI] (@Batch_Prefix char(15), @EMPLOYID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .UPR42505 (Batch_Prefix, EMPLOYID) VALUES ( @Batch_Prefix, @EMPLOYID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off  
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR42505SI] TO [DYNGRP]
GO