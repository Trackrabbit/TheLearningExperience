SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7190100SD] (@BSSI_Audit_Trail_Seq_Num numeric(19,5), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B7190100 WHERE BSSI_Audit_Trail_Seq_Num = @BSSI_Audit_Trail_Seq_Num AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B7190100 WHERE BSSI_Audit_Trail_Seq_Num = @BSSI_Audit_Trail_Seq_Num SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7190100SD] TO [DYNGRP]
GO
