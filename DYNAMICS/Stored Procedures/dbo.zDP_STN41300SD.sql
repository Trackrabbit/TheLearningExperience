SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_STN41300SD] (@Machine_ID char(15), @PRNSER smallint, @PRNTASK char(15), @LOCNCODE char(11), @PRNMODE smallint, @USERID char(15), @CMPANYID smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .STN41300 WHERE Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE = @PRNMODE AND USERID = @USERID AND CMPANYID = @CMPANYID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .STN41300 WHERE Machine_ID = @Machine_ID AND PRNSER = @PRNSER AND PRNTASK = @PRNTASK AND LOCNCODE = @LOCNCODE AND PRNMODE = @PRNMODE AND USERID = @USERID AND CMPANYID = @CMPANYID SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_STN41300SD] TO [DYNGRP]
GO