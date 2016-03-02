SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC5013SD] (@USERID char(15), @JRNENTRY int, @NC_Dest_IC_Company_DB char(31), @NC_Dest_IC_Journal_Entry int, @NC_Dest_IC_Sequence int, @NC_Dest_IC_Account_Index int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .NCIC5013 WHERE USERID = @USERID AND JRNENTRY = @JRNENTRY AND NC_Dest_IC_Company_DB = @NC_Dest_IC_Company_DB AND NC_Dest_IC_Journal_Entry = @NC_Dest_IC_Journal_Entry AND NC_Dest_IC_Sequence = @NC_Dest_IC_Sequence AND NC_Dest_IC_Account_Index = @NC_Dest_IC_Account_Index AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NCIC5013 WHERE USERID = @USERID AND JRNENTRY = @JRNENTRY AND NC_Dest_IC_Company_DB = @NC_Dest_IC_Company_DB AND NC_Dest_IC_Journal_Entry = @NC_Dest_IC_Journal_Entry AND NC_Dest_IC_Sequence = @NC_Dest_IC_Sequence AND NC_Dest_IC_Account_Index = @NC_Dest_IC_Account_Index SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5013SD] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC5013SD] TO [public]
GO
