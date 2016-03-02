SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00103SI] (@EFTFormatID char(15), @DSCRIPTN char(31), @EFTFormatType smallint, @EFT_File_Type smallint, @EFTTransferMethod smallint, @EFT_AutoSettlement tinyint, @EFTAddPadBlocks tinyint, @EFTPadCharacter char(1), @EFTPadLength smallint, @EFTMaximumLineLength smallint, @Number_Of_Lines smallint, @CREATDDT datetime, @MODIFDT datetime, @NOTEINDX numeric(19,5), @SERIES smallint, @MULTIPLE_ADDENDAS tinyint, @EFTDelimitFields tinyint, @EFTDelimiterField smallint, @EFTDelimiterFieldOther char(1), @EFTTextQualifier smallint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM00103 (EFTFormatID, DSCRIPTN, EFTFormatType, EFT_File_Type, EFTTransferMethod, EFT_AutoSettlement, EFTAddPadBlocks, EFTPadCharacter, EFTPadLength, EFTMaximumLineLength, Number_Of_Lines, CREATDDT, MODIFDT, NOTEINDX, SERIES, MULTIPLE_ADDENDAS, EFTDelimitFields, EFTDelimiterField, EFTDelimiterFieldOther, EFTTextQualifier) VALUES ( @EFTFormatID, @DSCRIPTN, @EFTFormatType, @EFT_File_Type, @EFTTransferMethod, @EFT_AutoSettlement, @EFTAddPadBlocks, @EFTPadCharacter, @EFTPadLength, @EFTMaximumLineLength, @Number_Of_Lines, @CREATDDT, @MODIFDT, @NOTEINDX, @SERIES, @MULTIPLE_ADDENDAS, @EFTDelimitFields, @EFTDelimiterField, @EFTDelimiterFieldOther, @EFTTextQualifier) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00103SI] TO [DYNGRP]
GO
