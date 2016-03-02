SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00201SD] (@SRVRECTYPE smallint, @CALLNBR char(11), @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC00201 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC00201 WHERE SRVRECTYPE = @SRVRECTYPE AND CALLNBR = @CALLNBR AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00201SD] TO [DYNGRP]
GO
