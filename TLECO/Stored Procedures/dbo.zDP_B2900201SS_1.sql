SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900201SS_1] (@BSSI_LeaseLoanType char(7)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_LeaseLoanType, BSSI_LeaseLoan_NextNo, NOTEINDX, DEX_ROW_ID FROM .B2900201 WHERE BSSI_LeaseLoanType = @BSSI_LeaseLoanType ORDER BY BSSI_LeaseLoanType ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900201SS_1] TO [DYNGRP]
GO
