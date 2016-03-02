SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CFM00101SD] (@EBS_Forecast_ID char(15), @CHEKBKID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .CFM00101 WHERE EBS_Forecast_ID = @EBS_Forecast_ID AND CHEKBKID = @CHEKBKID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .CFM00101 WHERE EBS_Forecast_ID = @EBS_Forecast_ID AND CHEKBKID = @CHEKBKID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CFM00101SD] TO [DYNGRP]
GO
