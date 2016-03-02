SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640711N_4] (@BS int, @LOCNCODE char(11), @ADRSCODE char(15), @DEX_ROW_ID int, @LOCNCODE_RS char(11), @ADRSCODE_RS char(15), @LOCNCODE_RE char(11), @ADRSCODE_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, BSSI_EventPrice, BSSI_Perc_Markup, BSSI_Description, BSSI_Description2, NOTEINDX, DEX_ROW_ID FROM .B4640711 WHERE ( LOCNCODE = @LOCNCODE AND ADRSCODE = @ADRSCODE AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE = @LOCNCODE AND ADRSCODE > @ADRSCODE OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, ADRSCODE ASC, DEX_ROW_ID ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, BSSI_EventPrice, BSSI_Perc_Markup, BSSI_Description, BSSI_Description2, NOTEINDX, DEX_ROW_ID FROM .B4640711 WHERE LOCNCODE = @LOCNCODE_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ( LOCNCODE = @LOCNCODE AND ADRSCODE = @ADRSCODE AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE = @LOCNCODE AND ADRSCODE > @ADRSCODE OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, ADRSCODE ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, PHONNAME, BSSI_Provider_Account_Nu, BSSI_Meter_Number, BSSI_EventPrice, BSSI_Perc_Markup, BSSI_Description, BSSI_Description2, NOTEINDX, DEX_ROW_ID FROM .B4640711 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE AND ( LOCNCODE = @LOCNCODE AND ADRSCODE = @ADRSCODE AND DEX_ROW_ID > @DEX_ROW_ID OR LOCNCODE = @LOCNCODE AND ADRSCODE > @ADRSCODE OR LOCNCODE > @LOCNCODE ) ORDER BY LOCNCODE ASC, ADRSCODE ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640711N_4] TO [DYNGRP]
GO
