SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_PM80905SD] (@USERID char(15), @DOCTYPE smallint, @DOCNUMBR char(21), @VCHRNMBR char(21), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .PM80905 WHERE USERID = @USERID AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .PM80905 WHERE USERID = @USERID AND DOCTYPE = @DOCTYPE AND DOCNUMBR = @DOCNUMBR AND VCHRNMBR = @VCHRNMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_PM80905SD] TO [DYNGRP]
GO