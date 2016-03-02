SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM90000SS_3] (@EFTFileStatus smallint, @EFTFileType smallint, @EFTFileGeneratedDate datetime, @FILENAME char(45)) AS  set nocount on SELECT TOP 1  FILENAME, EFTFileStatus, CHEKBKID, TIME1, FilePath, EFTFileType, EFTTransmissionType, EFTFileGeneratedDate, EFTFileGeneratedUserID, EFTFileSentDate, EFTFileSentUserID, DEX_ROW_ID FROM .CM90000 WHERE EFTFileStatus = @EFTFileStatus AND EFTFileType = @EFTFileType AND EFTFileGeneratedDate = @EFTFileGeneratedDate AND FILENAME = @FILENAME ORDER BY EFTFileStatus ASC, EFTFileType ASC, EFTFileGeneratedDate ASC, FILENAME ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM90000SS_3] TO [DYNGRP]
GO
