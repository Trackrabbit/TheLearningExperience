SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_HRREV032SD] (@REVIEWSETUPCODE_I char(31), @REVINTSEQUENCE_I smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .HRREV032 WHERE REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND REVINTSEQUENCE_I = @REVINTSEQUENCE_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .HRREV032 WHERE REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND REVINTSEQUENCE_I = @REVINTSEQUENCE_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_HRREV032SD] TO [DYNGRP]
GO
