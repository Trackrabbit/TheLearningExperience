SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602400N_1] (@BS int, @BSSI_Term char(25), @BSSI_Term_RS char(25), @BSSI_Term_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Term_RS IS NULL BEGIN SELECT TOP 25  BSSI_Term, BSSI_Description, BSSI_Amendment, BSSI_Total_Lease_Terms_Q, BSSI_Total_Lease_Terms_M, BSSI_Total_Lease_Terms_Y, NOTEINDX, DEX_ROW_ID FROM .B4602400 WHERE ( BSSI_Term > @BSSI_Term ) ORDER BY BSSI_Term ASC END ELSE IF @BSSI_Term_RS = @BSSI_Term_RE BEGIN SELECT TOP 25  BSSI_Term, BSSI_Description, BSSI_Amendment, BSSI_Total_Lease_Terms_Q, BSSI_Total_Lease_Terms_M, BSSI_Total_Lease_Terms_Y, NOTEINDX, DEX_ROW_ID FROM .B4602400 WHERE BSSI_Term = @BSSI_Term_RS AND ( BSSI_Term > @BSSI_Term ) ORDER BY BSSI_Term ASC END ELSE BEGIN SELECT TOP 25  BSSI_Term, BSSI_Description, BSSI_Amendment, BSSI_Total_Lease_Terms_Q, BSSI_Total_Lease_Terms_M, BSSI_Total_Lease_Terms_Y, NOTEINDX, DEX_ROW_ID FROM .B4602400 WHERE BSSI_Term BETWEEN @BSSI_Term_RS AND @BSSI_Term_RE AND ( BSSI_Term > @BSSI_Term ) ORDER BY BSSI_Term ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602400N_1] TO [DYNGRP]
GO
