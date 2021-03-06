SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_DEFLTCOASD] (@INDUSTYP smallint, @DEFCHRAC_1 char(9), @DEFCHRAC_2 char(9), @DEFCHRAC_3 char(9), @DEFCHRAC_4 char(9), @DEFCHRAC_5 char(9), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .DEFLTCOA WHERE INDUSTYP = @INDUSTYP AND DEFCHRAC_1 = @DEFCHRAC_1 AND DEFCHRAC_2 = @DEFCHRAC_2 AND DEFCHRAC_3 = @DEFCHRAC_3 AND DEFCHRAC_4 = @DEFCHRAC_4 AND DEFCHRAC_5 = @DEFCHRAC_5 AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .DEFLTCOA WHERE INDUSTYP = @INDUSTYP AND DEFCHRAC_1 = @DEFCHRAC_1 AND DEFCHRAC_2 = @DEFCHRAC_2 AND DEFCHRAC_3 = @DEFCHRAC_3 AND DEFCHRAC_4 = @DEFCHRAC_4 AND DEFCHRAC_5 = @DEFCHRAC_5 SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_DEFLTCOASD] TO [DYNGRP]
GO
