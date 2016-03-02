SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640711SI] (@LOCNCODE char(11), @LNITMSEQ int, @BSSI_Contact_Option smallint, @BSSI_Contact_ID char(25), @ADRSCODE char(15), @PHONNAME char(21), @BSSI_Provider_Account_Nu char(15), @BSSI_Meter_Number char(25), @BSSI_EventPrice numeric(19,5), @BSSI_Perc_Markup numeric(19,5), @BSSI_Description char(51), @BSSI_Description2 char(51), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640711 (LOCNCODE, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, BSSI_EventPrice, BSSI_Perc_Markup, BSSI_Description, BSSI_Description2, NOTEINDX) VALUES ( @LOCNCODE, @LNITMSEQ, @BSSI_Contact_Option, @BSSI_Contact_ID, @ADRSCODE, @PHONNAME, @BSSI_Provider_Account_Nu, @BSSI_Meter_Number, @BSSI_EventPrice, @BSSI_Perc_Markup, @BSSI_Description, @BSSI_Description2, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640711SI] TO [DYNGRP]
GO
