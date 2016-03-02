SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4604000L_1] (@BSSI_MTA_Number_RS char(25), @BSSI_MTA_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_MTA_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_MTA_Number, BSSI_MTA_Name, BSSI_MTA_Desc, NOTEINDX, DEX_ROW_ID FROM .B4604000 ORDER BY BSSI_MTA_Number DESC END ELSE IF @BSSI_MTA_Number_RS = @BSSI_MTA_Number_RE BEGIN SELECT TOP 25  BSSI_MTA_Number, BSSI_MTA_Name, BSSI_MTA_Desc, NOTEINDX, DEX_ROW_ID FROM .B4604000 WHERE BSSI_MTA_Number = @BSSI_MTA_Number_RS ORDER BY BSSI_MTA_Number DESC END ELSE BEGIN SELECT TOP 25  BSSI_MTA_Number, BSSI_MTA_Name, BSSI_MTA_Desc, NOTEINDX, DEX_ROW_ID FROM .B4604000 WHERE BSSI_MTA_Number BETWEEN @BSSI_MTA_Number_RS AND @BSSI_MTA_Number_RE ORDER BY BSSI_MTA_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4604000L_1] TO [DYNGRP]
GO