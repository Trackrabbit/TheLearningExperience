SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_RV020221SD] (@REVIEWSETUPCODE_I char(31), @SEQORDER_I smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .RV020221 WHERE REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND SEQORDER_I = @SEQORDER_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .RV020221 WHERE REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND SEQORDER_I = @SEQORDER_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_RV020221SD] TO [DYNGRP]
GO