SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB70100SD] (@Action_Type smallint, @Parameter_Name char(31), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .NLB70100 WHERE Action_Type = @Action_Type AND Parameter_Name = @Parameter_Name AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NLB70100 WHERE Action_Type = @Action_Type AND Parameter_Name = @Parameter_Name SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB70100SD] TO [DYNGRP]
GO
