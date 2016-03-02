SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_CreditCard_MSTRSD] (@MSO_TableName char(49), @MSO_StringKey1 char(73), @MSO_StringKey2 char(73), @MSO_IntKey1 int, @MSO_IntKey2 int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .MSO_CreditCard_MSTR WHERE MSO_TableName = @MSO_TableName AND MSO_StringKey1 = @MSO_StringKey1 AND MSO_StringKey2 = @MSO_StringKey2 AND MSO_IntKey1 = @MSO_IntKey1 AND MSO_IntKey2 = @MSO_IntKey2 AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .MSO_CreditCard_MSTR WHERE MSO_TableName = @MSO_TableName AND MSO_StringKey1 = @MSO_StringKey1 AND MSO_StringKey2 = @MSO_StringKey2 AND MSO_IntKey1 = @MSO_IntKey1 AND MSO_IntKey2 = @MSO_IntKey2 SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_CreditCard_MSTRSD] TO [DYNGRP]
GO
