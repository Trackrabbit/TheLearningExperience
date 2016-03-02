SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10001SD] (@IVDOCTYP smallint, @IVDOCNBR char(17), @LNSEQNBR numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IV10001 WHERE IVDOCTYP = @IVDOCTYP AND IVDOCNBR = @IVDOCNBR AND LNSEQNBR = @LNSEQNBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IV10001 WHERE IVDOCTYP = @IVDOCTYP AND IVDOCNBR = @IVDOCNBR AND LNSEQNBR = @LNSEQNBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10001SD] TO [DYNGRP]
GO
