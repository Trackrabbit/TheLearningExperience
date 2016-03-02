SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM90000UN_2] (@BS int, @EFTFileStatus smallint, @CHEKBKID char(15), @EFTFileStatus_RS smallint, @CHEKBKID_RS char(15), @EFTFileStatus_RE smallint, @CHEKBKID_RE char(15)) AS  set nocount on IF @EFTFileStatus_RS IS NULL BEGIN SELECT TOP 25  FILENAME, EFTFileStatus, CHEKBKID, TIME1, FilePath, EFTFileType, EFTTransmissionType, EFTFileGeneratedDate, EFTFileGeneratedUserID, EFTFileSentDate, EFTFileSentUserID, DEX_ROW_ID FROM .CM90000 WHERE ( EFTFileStatus = @EFTFileStatus AND CHEKBKID > @CHEKBKID OR EFTFileStatus > @EFTFileStatus ) ORDER BY EFTFileStatus ASC, CHEKBKID ASC, DEX_ROW_ID ASC END ELSE IF @EFTFileStatus_RS = @EFTFileStatus_RE BEGIN SELECT TOP 25  FILENAME, EFTFileStatus, CHEKBKID, TIME1, FilePath, EFTFileType, EFTTransmissionType, EFTFileGeneratedDate, EFTFileGeneratedUserID, EFTFileSentDate, EFTFileSentUserID, DEX_ROW_ID FROM .CM90000 WHERE EFTFileStatus = @EFTFileStatus_RS AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND ( EFTFileStatus = @EFTFileStatus AND CHEKBKID > @CHEKBKID OR EFTFileStatus > @EFTFileStatus ) ORDER BY EFTFileStatus ASC, CHEKBKID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  FILENAME, EFTFileStatus, CHEKBKID, TIME1, FilePath, EFTFileType, EFTTransmissionType, EFTFileGeneratedDate, EFTFileGeneratedUserID, EFTFileSentDate, EFTFileSentUserID, DEX_ROW_ID FROM .CM90000 WHERE EFTFileStatus BETWEEN @EFTFileStatus_RS AND @EFTFileStatus_RE AND CHEKBKID BETWEEN @CHEKBKID_RS AND @CHEKBKID_RE AND ( EFTFileStatus = @EFTFileStatus AND CHEKBKID > @CHEKBKID OR EFTFileStatus > @EFTFileStatus ) ORDER BY EFTFileStatus ASC, CHEKBKID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM90000UN_2] TO [DYNGRP]
GO