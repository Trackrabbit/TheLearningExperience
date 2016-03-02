SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100200L_1] (@BSSI_Contract_Number_RS char(25), @BSSI_Contract_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Contract_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Contract_Number, BSSI_Description, STRTDATE, ENDDATE, VENDORID, NOTEINDX, CUSTNMBR, DUMYRCRD, DEX_ROW_ID FROM .B7100200 ORDER BY BSSI_Contract_Number DESC END ELSE IF @BSSI_Contract_Number_RS = @BSSI_Contract_Number_RE BEGIN SELECT TOP 25  BSSI_Contract_Number, BSSI_Description, STRTDATE, ENDDATE, VENDORID, NOTEINDX, CUSTNMBR, DUMYRCRD, DEX_ROW_ID FROM .B7100200 WHERE BSSI_Contract_Number = @BSSI_Contract_Number_RS ORDER BY BSSI_Contract_Number DESC END ELSE BEGIN SELECT TOP 25  BSSI_Contract_Number, BSSI_Description, STRTDATE, ENDDATE, VENDORID, NOTEINDX, CUSTNMBR, DUMYRCRD, DEX_ROW_ID FROM .B7100200 WHERE BSSI_Contract_Number BETWEEN @BSSI_Contract_Number_RS AND @BSSI_Contract_Number_RE ORDER BY BSSI_Contract_Number DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100200L_1] TO [DYNGRP]
GO
