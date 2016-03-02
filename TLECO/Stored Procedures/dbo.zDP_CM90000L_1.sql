SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM90000L_1] (@EFTFileStatus_RS smallint, @EFTFileGeneratedDate_RS datetime, @FILENAME_RS char(45), @EFTFileType_RS smallint, @EFTFileStatus_RE smallint, @EFTFileGeneratedDate_RE datetime, @FILENAME_RE char(45), @EFTFileType_RE smallint) AS  set nocount on IF @EFTFileStatus_RS IS NULL BEGIN SELECT TOP 25  FILENAME, EFTFileStatus, CHEKBKID, TIME1, FilePath, EFTFileType, EFTTransmissionType, EFTFileGeneratedDate, EFTFileGeneratedUserID, EFTFileSentDate, EFTFileSentUserID, DEX_ROW_ID FROM .CM90000 ORDER BY EFTFileStatus DESC, EFTFileGeneratedDate DESC, FILENAME DESC, EFTFileType DESC END ELSE IF @EFTFileStatus_RS = @EFTFileStatus_RE BEGIN SELECT TOP 25  FILENAME, EFTFileStatus, CHEKBKID, TIME1, FilePath, EFTFileType, EFTTransmissionType, EFTFileGeneratedDate, EFTFileGeneratedUserID, EFTFileSentDate, EFTFileSentUserID, DEX_ROW_ID FROM .CM90000 WHERE EFTFileStatus = @EFTFileStatus_RS AND EFTFileGeneratedDate BETWEEN @EFTFileGeneratedDate_RS AND @EFTFileGeneratedDate_RE AND FILENAME BETWEEN @FILENAME_RS AND @FILENAME_RE AND EFTFileType BETWEEN @EFTFileType_RS AND @EFTFileType_RE ORDER BY EFTFileStatus DESC, EFTFileGeneratedDate DESC, FILENAME DESC, EFTFileType DESC END ELSE BEGIN SELECT TOP 25  FILENAME, EFTFileStatus, CHEKBKID, TIME1, FilePath, EFTFileType, EFTTransmissionType, EFTFileGeneratedDate, EFTFileGeneratedUserID, EFTFileSentDate, EFTFileSentUserID, DEX_ROW_ID FROM .CM90000 WHERE EFTFileStatus BETWEEN @EFTFileStatus_RS AND @EFTFileStatus_RE AND EFTFileGeneratedDate BETWEEN @EFTFileGeneratedDate_RS AND @EFTFileGeneratedDate_RE AND FILENAME BETWEEN @FILENAME_RS AND @FILENAME_RE AND EFTFileType BETWEEN @EFTFileType_RS AND @EFTFileType_RE ORDER BY EFTFileStatus DESC, EFTFileGeneratedDate DESC, FILENAME DESC, EFTFileType DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM90000L_1] TO [DYNGRP]
GO