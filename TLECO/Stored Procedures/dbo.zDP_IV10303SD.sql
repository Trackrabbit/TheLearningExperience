SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV10303SD] (@STCKCNTID char(15), @ITEMNMBR char(31), @LOCNCODE char(11), @BINNMBR char(21), @UOFM char(9), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .IV10303 WHERE STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND UOFM = @UOFM AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .IV10303 WHERE STCKCNTID = @STCKCNTID AND ITEMNMBR = @ITEMNMBR AND LOCNCODE = @LOCNCODE AND BINNMBR = @BINNMBR AND UOFM = @UOFM SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV10303SD] TO [DYNGRP]
GO
