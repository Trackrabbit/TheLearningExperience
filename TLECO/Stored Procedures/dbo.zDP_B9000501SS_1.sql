SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000501SS_1] (@BSSI_Lease_Loan_Number char(17)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Lease_Loan_Number, CUSTNMBR, CUSTNAME, LASTPYDT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, BSSI_Facility_ID, USERID, DEX_ROW_ID FROM .B9000501 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number ORDER BY BSSI_Lease_Loan_Number ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000501SS_1] TO [DYNGRP]
GO
