SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CO00122SD] (@FieldsListGuid char(37), @Group_ID int, @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .CO00122 WHERE FieldsListGuid = @FieldsListGuid AND Group_ID = @Group_ID AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .CO00122 WHERE FieldsListGuid = @FieldsListGuid AND Group_ID = @Group_ID AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CO00122SD] TO [DYNGRP]
GO
