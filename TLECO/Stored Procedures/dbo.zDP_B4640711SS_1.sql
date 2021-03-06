SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640711SS_1] (@LOCNCODE char(11), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, BSSI_EventPrice, BSSI_Perc_Markup, BSSI_Description, BSSI_Description2, NOTEINDX, DEX_ROW_ID FROM .B4640711 WHERE LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ ORDER BY LOCNCODE ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640711SS_1] TO [DYNGRP]
GO
