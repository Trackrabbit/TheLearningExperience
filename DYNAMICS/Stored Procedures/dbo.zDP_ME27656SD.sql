SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_ME27656SD] (@CMPANYID smallint, @ME_Major_Version smallint, @ME_Minor_Version smallint, @ME_Build_Number smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .ME27656 WHERE CMPANYID = @CMPANYID AND ME_Major_Version = @ME_Major_Version AND ME_Minor_Version = @ME_Minor_Version AND ME_Build_Number = @ME_Build_Number AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .ME27656 WHERE CMPANYID = @CMPANYID AND ME_Major_Version = @ME_Major_Version AND ME_Minor_Version = @ME_Minor_Version AND ME_Build_Number = @ME_Build_Number SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_ME27656SD] TO [DYNGRP]
GO
