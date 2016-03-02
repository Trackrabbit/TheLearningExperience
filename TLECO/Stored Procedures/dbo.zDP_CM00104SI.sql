SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00104SI] (@EFTFormatID char(15), @EFTLineType smallint, @SQNCLINE numeric(19,5), @EFTFieldNumber smallint, @EFTXMLTag char(15), @DSCRIPTN char(31), @EFTMapsTo smallint, @EFTSourceTable char(51), @FieldName char(79), @EFTDataValue char(101), @LOFSGMNT smallint, @EFTTagHierarchy smallint, @EFTOccurrence smallint, @EFTCalculationType smallint, @EFTDatatype smallint, @EFTJustification smallint, @EFTPadCharacter char(1), @EFTDecimalPlaces smallint, @EFTRemoveDecimalPlace tinyint, @DATEFMT smallint, @EFTUseTextQualifier tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM00104 (EFTFormatID, EFTLineType, SQNCLINE, EFTFieldNumber, EFTXMLTag, DSCRIPTN, EFTMapsTo, EFTSourceTable, FieldName, EFTDataValue, LOFSGMNT, EFTTagHierarchy, EFTOccurrence, EFTCalculationType, EFTDatatype, EFTJustification, EFTPadCharacter, EFTDecimalPlaces, EFTRemoveDecimalPlace, DATEFMT, EFTUseTextQualifier) VALUES ( @EFTFormatID, @EFTLineType, @SQNCLINE, @EFTFieldNumber, @EFTXMLTag, @DSCRIPTN, @EFTMapsTo, @EFTSourceTable, @FieldName, @EFTDataValue, @LOFSGMNT, @EFTTagHierarchy, @EFTOccurrence, @EFTCalculationType, @EFTDatatype, @EFTJustification, @EFTPadCharacter, @EFTDecimalPlaces, @EFTRemoveDecimalPlace, @DATEFMT, @EFTUseTextQualifier) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00104SI] TO [DYNGRP]
GO
