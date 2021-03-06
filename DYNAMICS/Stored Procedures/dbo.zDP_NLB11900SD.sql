SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
CREATE PROC [dbo].[zDP_NLB11900SD] (@Navigation_ID char(15), @LNITMSEQ int, @USERID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS set nocount on BEGIN IF @RID > 0 DELETE FROM .NLB11900 WHERE Navigation_ID = @Navigation_ID AND LNITMSEQ = @LNITMSEQ AND USERID = @USERID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .NLB11900 WHERE Navigation_ID = @Navigation_ID AND LNITMSEQ = @LNITMSEQ AND USERID = @USERID SELECT @RowsAffected = @@rowcount END set nocount off   
GO
GRANT EXECUTE ON  [dbo].[zDP_NLB11900SD] TO [DYNGRP]
GO
