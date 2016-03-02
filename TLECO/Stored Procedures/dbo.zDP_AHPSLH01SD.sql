SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AHPSLH01SD] (@EMPLOYID char(15), @PAYRCORD char(7), @EFFECTIVEDATE_I datetime, @SEQNUMBR int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AHPSLH01 WHERE EMPLOYID = @EMPLOYID AND PAYRCORD = @PAYRCORD AND EFFECTIVEDATE_I = @EFFECTIVEDATE_I AND SEQNUMBR = @SEQNUMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AHPSLH01 WHERE EMPLOYID = @EMPLOYID AND PAYRCORD = @PAYRCORD AND EFFECTIVEDATE_I = @EFFECTIVEDATE_I AND SEQNUMBR = @SEQNUMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AHPSLH01SD] TO [DYNGRP]
GO
