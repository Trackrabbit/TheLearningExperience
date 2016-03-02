SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_AR2BEN40SD] (@EMPID_I char(15), @BNFBEGDT datetime, @BENEFIT char(7), @I1_I smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .AR2BEN40 WHERE EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT = @BENEFIT AND I1_I = @I1_I AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .AR2BEN40 WHERE EMPID_I = @EMPID_I AND BNFBEGDT = @BNFBEGDT AND BENEFIT = @BENEFIT AND I1_I = @I1_I SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_AR2BEN40SD] TO [DYNGRP]
GO
