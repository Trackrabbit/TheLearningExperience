SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SOP10105SD] (@SOPTYPE smallint, @SOPNUMBE char(21), @LNITMSEQ int, @TAXDTLID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SOP10105 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND TAXDTLID = @TAXDTLID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SOP10105 WHERE SOPTYPE = @SOPTYPE AND SOPNUMBE = @SOPNUMBE AND LNITMSEQ = @LNITMSEQ AND TAXDTLID = @TAXDTLID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SOP10105SD] TO [DYNGRP]
GO
