SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640711F_3] (@LOCNCODE_RS char(11), @BSSI_Contact_Option_RS smallint, @LOCNCODE_RE char(11), @BSSI_Contact_Option_RE smallint) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, BSSI_EventPrice, BSSI_Perc_Markup, BSSI_Description, BSSI_Description2, NOTEINDX, DEX_ROW_ID FROM .B4640711 ORDER BY LOCNCODE ASC, BSSI_Contact_Option ASC, DEX_ROW_ID ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, BSSI_EventPrice, BSSI_Perc_Markup, BSSI_Description, BSSI_Description2, NOTEINDX, DEX_ROW_ID FROM .B4640711 WHERE LOCNCODE = @LOCNCODE_RS AND BSSI_Contact_Option BETWEEN @BSSI_Contact_Option_RS AND @BSSI_Contact_Option_RE ORDER BY LOCNCODE ASC, BSSI_Contact_Option ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, BSSI_EventPrice, BSSI_Perc_Markup, BSSI_Description, BSSI_Description2, NOTEINDX, DEX_ROW_ID FROM .B4640711 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_Contact_Option BETWEEN @BSSI_Contact_Option_RS AND @BSSI_Contact_Option_RE ORDER BY LOCNCODE ASC, BSSI_Contact_Option ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640711F_3] TO [DYNGRP]
GO
