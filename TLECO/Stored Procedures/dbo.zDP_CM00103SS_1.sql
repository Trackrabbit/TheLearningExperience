SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00103SS_1] (@EFTFormatID char(15)) AS  set nocount on SELECT TOP 1  EFTFormatID, DSCRIPTN, EFTFormatType, EFT_File_Type, EFTTransferMethod, EFT_AutoSettlement, EFTAddPadBlocks, EFTPadCharacter, EFTPadLength, EFTMaximumLineLength, Number_Of_Lines, CREATDDT, MODIFDT, NOTEINDX, SERIES, MULTIPLE_ADDENDAS, EFTDelimitFields, EFTDelimiterField, EFTDelimiterFieldOther, EFTTextQualifier, DEX_ROW_ID FROM .CM00103 WHERE EFTFormatID = @EFTFormatID ORDER BY EFTFormatID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00103SS_1] TO [DYNGRP]
GO
