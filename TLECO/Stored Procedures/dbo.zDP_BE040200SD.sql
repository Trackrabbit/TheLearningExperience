SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_BE040200SD] (@EMPID_I char(15), @IC_Instance_Number_I smallint, @SEQ_I int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .BE040200 WHERE EMPID_I = @EMPID_I AND IC_Instance_Number_I = @IC_Instance_Number_I AND SEQ_I = @SEQ_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .BE040200 WHERE EMPID_I = @EMPID_I AND IC_Instance_Number_I = @IC_Instance_Number_I AND SEQ_I = @SEQ_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_BE040200SD] TO [DYNGRP]
GO
