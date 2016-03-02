SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY90000SD] (@ObjectType char(31), @ObjectID char(61), @PropertyName char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SY90000 WHERE ObjectType = @ObjectType AND ObjectID = @ObjectID AND PropertyName = @PropertyName AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SY90000 WHERE ObjectType = @ObjectType AND ObjectID = @ObjectID AND PropertyName = @PropertyName SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY90000SD] TO [DYNGRP]
GO
