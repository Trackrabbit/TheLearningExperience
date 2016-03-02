SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM90000SD] (@EFTFileStatus smallint, @EFTFileGeneratedDate datetime, @FILENAME char(45), @EFTFileType smallint, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS  set nocount on BEGIN IF @RID > 0 DELETE FROM .CM90000 WHERE EFTFileStatus = @EFTFileStatus AND EFTFileGeneratedDate = @EFTFileGeneratedDate AND FILENAME = @FILENAME AND EFTFileType = @EFTFileType AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .CM90000 WHERE EFTFileStatus = @EFTFileStatus AND EFTFileGeneratedDate = @EFTFileGeneratedDate AND FILENAME = @FILENAME AND EFTFileType = @EFTFileType SELECT @RowsAffected = @@rowcount END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM90000SD] TO [DYNGRP]
GO
