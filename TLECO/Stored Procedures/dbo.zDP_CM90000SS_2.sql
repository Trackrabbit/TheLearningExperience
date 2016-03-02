SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM90000SS_2] (@EFTFileStatus smallint, @CHEKBKID char(15)) AS  set nocount on SELECT TOP 1  FILENAME, EFTFileStatus, CHEKBKID, TIME1, FilePath, EFTFileType, EFTTransmissionType, EFTFileGeneratedDate, EFTFileGeneratedUserID, EFTFileSentDate, EFTFileSentUserID, DEX_ROW_ID FROM .CM90000 WHERE EFTFileStatus = @EFTFileStatus AND CHEKBKID = @CHEKBKID ORDER BY EFTFileStatus ASC, CHEKBKID ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM90000SS_2] TO [DYNGRP]
GO
