SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC05612SD] (@RTV_Number char(15), @RTV_Line numeric(19,5), @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC05612 WHERE RTV_Number = @RTV_Number AND RTV_Line = @RTV_Line AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC05612 WHERE RTV_Number = @RTV_Number AND RTV_Line = @RTV_Line AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC05612SD] TO [DYNGRP]
GO
