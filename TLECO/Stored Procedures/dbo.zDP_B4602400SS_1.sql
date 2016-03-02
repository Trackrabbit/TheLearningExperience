SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602400SS_1] (@BSSI_Term char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Term, BSSI_Description, BSSI_Amendment, BSSI_Total_Lease_Terms_Q, BSSI_Total_Lease_Terms_M, BSSI_Total_Lease_Terms_Y, NOTEINDX, DEX_ROW_ID FROM .B4602400 WHERE BSSI_Term = @BSSI_Term ORDER BY BSSI_Term ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602400SS_1] TO [DYNGRP]
GO
