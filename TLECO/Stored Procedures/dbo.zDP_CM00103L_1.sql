SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00103L_1] (@EFTFormatID_RS char(15), @EFTFormatID_RE char(15)) AS  set nocount on IF @EFTFormatID_RS IS NULL BEGIN SELECT TOP 25  EFTFormatID, DSCRIPTN, EFTFormatType, EFT_File_Type, EFTTransferMethod, EFT_AutoSettlement, EFTAddPadBlocks, EFTPadCharacter, EFTPadLength, EFTMaximumLineLength, Number_Of_Lines, CREATDDT, MODIFDT, NOTEINDX, SERIES, MULTIPLE_ADDENDAS, EFTDelimitFields, EFTDelimiterField, EFTDelimiterFieldOther, EFTTextQualifier, DEX_ROW_ID FROM .CM00103 ORDER BY EFTFormatID DESC END ELSE IF @EFTFormatID_RS = @EFTFormatID_RE BEGIN SELECT TOP 25  EFTFormatID, DSCRIPTN, EFTFormatType, EFT_File_Type, EFTTransferMethod, EFT_AutoSettlement, EFTAddPadBlocks, EFTPadCharacter, EFTPadLength, EFTMaximumLineLength, Number_Of_Lines, CREATDDT, MODIFDT, NOTEINDX, SERIES, MULTIPLE_ADDENDAS, EFTDelimitFields, EFTDelimiterField, EFTDelimiterFieldOther, EFTTextQualifier, DEX_ROW_ID FROM .CM00103 WHERE EFTFormatID = @EFTFormatID_RS ORDER BY EFTFormatID DESC END ELSE BEGIN SELECT TOP 25  EFTFormatID, DSCRIPTN, EFTFormatType, EFT_File_Type, EFTTransferMethod, EFT_AutoSettlement, EFTAddPadBlocks, EFTPadCharacter, EFTPadLength, EFTMaximumLineLength, Number_Of_Lines, CREATDDT, MODIFDT, NOTEINDX, SERIES, MULTIPLE_ADDENDAS, EFTDelimitFields, EFTDelimiterField, EFTDelimiterFieldOther, EFTTextQualifier, DEX_ROW_ID FROM .CM00103 WHERE EFTFormatID BETWEEN @EFTFormatID_RS AND @EFTFormatID_RE ORDER BY EFTFormatID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00103L_1] TO [DYNGRP]
GO
