SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC06017SD] (@ROUTEID char(11), @ITEMNMBR char(31), @SEQUENCE1 numeric(19,5), @LNITMSEQ int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .SVC06017 WHERE ROUTEID = @ROUTEID AND ITEMNMBR = @ITEMNMBR AND SEQUENCE1 = @SEQUENCE1 AND LNITMSEQ = @LNITMSEQ AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .SVC06017 WHERE ROUTEID = @ROUTEID AND ITEMNMBR = @ITEMNMBR AND SEQUENCE1 = @SEQUENCE1 AND LNITMSEQ = @LNITMSEQ SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC06017SD] TO [DYNGRP]
GO
