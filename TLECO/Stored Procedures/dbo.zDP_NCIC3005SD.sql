SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_NCIC3005SD] (@NC_Source_Company_ID smallint, @NC_Src_IC_Account_Index int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 14.00.0084.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .NCIC3005 WHERE NC_Source_Company_ID = @NC_Source_Company_ID AND NC_Src_IC_Account_Index = @NC_Src_IC_Account_Index AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NCIC3005 WHERE NC_Source_Company_ID = @NC_Source_Company_ID AND NC_Src_IC_Account_Index = @NC_Src_IC_Account_Index SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3005SD] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[zDP_NCIC3005SD] TO [public]
GO
