SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5012SD] (@USERID char(15), @JRNENTRY int, @NC_Source_IC_Journal_Ent int, @NC_Source_IC_Sequence int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .NCIC5012 WHERE USERID = @USERID AND JRNENTRY = @JRNENTRY AND NC_Source_IC_Journal_Ent = @NC_Source_IC_Journal_Ent AND NC_Source_IC_Sequence = @NC_Source_IC_Sequence AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NCIC5012 WHERE USERID = @USERID AND JRNENTRY = @JRNENTRY AND NC_Source_IC_Journal_Ent = @NC_Source_IC_Journal_Ent AND NC_Source_IC_Sequence = @NC_Source_IC_Sequence SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5012SD] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5012SD] TO [public]
GO
