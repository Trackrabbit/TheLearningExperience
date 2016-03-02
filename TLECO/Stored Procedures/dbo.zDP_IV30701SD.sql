SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV30701SD] (@STCKCNTID char(15), @SEQNUMBR int, @ITEMNMBR char(31), @LOCNCODE char(11), @BINNMBR char(21), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IV30701 WHERE STCKCNTID = @STCKCNTID AND SEQNUMBR = @SEQNUMBR AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IV30701 WHERE STCKCNTID = @STCKCNTID AND SEQNUMBR = @SEQNUMBR AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV30701SD] TO [DYNGRP]
GO
