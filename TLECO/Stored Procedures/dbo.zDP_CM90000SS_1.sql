SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM90000SS_1] (@EFTFileStatus smallint, @EFTFileGeneratedDate datetime, @FILENAME char(45), @EFTFileType smallint) AS  set nocount on SELECT TOP 1  FILENAME, EFTFileStatus, CHEKBKID, TIME1, FilePath, EFTFileType, EFTTransmissionType, EFTFileGeneratedDate, EFTFileGeneratedUserID, EFTFileSentDate, EFTFileSentUserID, DEX_ROW_ID FROM .CM90000 WHERE EFTFileStatus = @EFTFileStatus AND EFTFileGeneratedDate = @EFTFileGeneratedDate AND FILENAME = @FILENAME AND EFTFileType = @EFTFileType ORDER BY EFTFileStatus ASC, EFTFileGeneratedDate ASC, FILENAME ASC, EFTFileType ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM90000SS_1] TO [DYNGRP]
GO
