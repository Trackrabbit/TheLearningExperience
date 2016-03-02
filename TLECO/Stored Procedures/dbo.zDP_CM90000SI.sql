SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM90000SI] (@FILENAME char(45), @EFTFileStatus smallint, @CHEKBKID char(15), @TIME1 datetime, @FilePath char(255), @EFTFileType smallint, @EFTTransmissionType smallint, @EFTFileGeneratedDate datetime, @EFTFileGeneratedUserID char(15), @EFTFileSentDate datetime, @EFTFileSentUserID char(15), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM90000 (FILENAME, EFTFileStatus, CHEKBKID, TIME1, FilePath, EFTFileType, EFTTransmissionType, EFTFileGeneratedDate, EFTFileGeneratedUserID, EFTFileSentDate, EFTFileSentUserID) VALUES ( @FILENAME, @EFTFileStatus, @CHEKBKID, @TIME1, @FilePath, @EFTFileType, @EFTTransmissionType, @EFTFileGeneratedDate, @EFTFileGeneratedUserID, @EFTFileSentDate, @EFTFileSentUserID) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM90000SI] TO [DYNGRP]
GO
