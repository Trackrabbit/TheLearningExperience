SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_VAT10302SD] (@SERIES smallint, @DOCTYPE smallint, @DOCNUMBR char(21), @SQNCLINE numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .VAT10302 WHERE SERIES = @SERIES AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND SQNCLINE = @SQNCLINE AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .VAT10302 WHERE SERIES = @SERIES AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND SQNCLINE = @SQNCLINE SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_VAT10302SD] TO [DYNGRP]
GO