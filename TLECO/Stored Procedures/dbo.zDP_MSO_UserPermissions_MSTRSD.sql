SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_UserPermissions_MSTRSD] (@MSO_UserID char(51), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MSO_UserPermissions_MSTR WHERE MSO_UserID = @MSO_UserID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MSO_UserPermissions_MSTR WHERE MSO_UserID = @MSO_UserID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_UserPermissions_MSTRSD] TO [DYNGRP]
GO
