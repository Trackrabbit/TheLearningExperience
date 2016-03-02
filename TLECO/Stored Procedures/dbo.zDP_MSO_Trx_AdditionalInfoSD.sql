SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_Trx_AdditionalInfoSD] (@MSO_InstanceGUID char(101), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MSO_Trx_AdditionalInfo WHERE MSO_InstanceGUID = @MSO_InstanceGUID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MSO_Trx_AdditionalInfo WHERE MSO_InstanceGUID = @MSO_InstanceGUID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_Trx_AdditionalInfoSD] TO [DYNGRP]
GO
