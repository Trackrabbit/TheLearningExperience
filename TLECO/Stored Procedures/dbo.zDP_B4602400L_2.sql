SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602400L_2] (@BSSI_Description_RS char(51), @BSSI_Description_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Description_RS IS NULL BEGIN SELECT TOP 25  BSSI_Term, BSSI_Description, BSSI_Amendment, BSSI_Total_Lease_Terms_Q, BSSI_Total_Lease_Terms_M, BSSI_Total_Lease_Terms_Y, NOTEINDX, DEX_ROW_ID FROM .B4602400 ORDER BY BSSI_Description DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Description_RS = @BSSI_Description_RE BEGIN SELECT TOP 25  BSSI_Term, BSSI_Description, BSSI_Amendment, BSSI_Total_Lease_Terms_Q, BSSI_Total_Lease_Terms_M, BSSI_Total_Lease_Terms_Y, NOTEINDX, DEX_ROW_ID FROM .B4602400 WHERE BSSI_Description = @BSSI_Description_RS ORDER BY BSSI_Description DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Term, BSSI_Description, BSSI_Amendment, BSSI_Total_Lease_Terms_Q, BSSI_Total_Lease_Terms_M, BSSI_Total_Lease_Terms_Y, NOTEINDX, DEX_ROW_ID FROM .B4602400 WHERE BSSI_Description BETWEEN @BSSI_Description_RS AND @BSSI_Description_RE ORDER BY BSSI_Description DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602400L_2] TO [DYNGRP]
GO
