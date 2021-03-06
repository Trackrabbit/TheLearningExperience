SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B7100200SS_1] (@BSSI_Contract_Number char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Contract_Number, BSSI_Description, STRTDATE, ENDDATE, VENDORID, NOTEINDX, CUSTNMBR, DUMYRCRD, DEX_ROW_ID FROM .B7100200 WHERE BSSI_Contract_Number = @BSSI_Contract_Number ORDER BY BSSI_Contract_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B7100200SS_1] TO [DYNGRP]
GO
