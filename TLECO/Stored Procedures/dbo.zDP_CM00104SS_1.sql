SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00104SS_1] (@EFTFormatID char(15), @EFTLineType smallint, @SQNCLINE numeric(19,5)) AS  set nocount on SELECT TOP 1  EFTFormatID, EFTLineType, SQNCLINE, EFTFieldNumber, EFTXMLTag, DSCRIPTN, EFTMapsTo, EFTSourceTable, FieldName, EFTDataValue, LOFSGMNT, EFTTagHierarchy, EFTOccurrence, EFTCalculationType, EFTDatatype, EFTJustification, EFTPadCharacter, EFTDecimalPlaces, EFTRemoveDecimalPlace, DATEFMT, EFTUseTextQualifier, DEX_ROW_ID FROM .CM00104 WHERE EFTFormatID = @EFTFormatID AND EFTLineType = @EFTLineType AND SQNCLINE = @SQNCLINE ORDER BY EFTFormatID ASC, EFTLineType ASC, SQNCLINE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00104SS_1] TO [DYNGRP]
GO
