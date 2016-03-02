SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30004SD] (@DOCTYPE smallint, @Bin_XFer_Doc_Number char(21), @Bin_XFer_Date datetime, @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IV30004 WHERE DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number = @Bin_XFer_Doc_Number AND Bin_XFer_Date = @Bin_XFer_Date AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IV30004 WHERE DOCTYPE = @DOCTYPE AND Bin_XFer_Doc_Number = @Bin_XFer_Doc_Number AND Bin_XFer_Date = @Bin_XFer_Date AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30004SD] TO [DYNGRP]
GO
