SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000501UN_2] (@BS int, @USERID char(15), @USERID_RS char(15), @USERID_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @USERID_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, CUSTNMBR, CUSTNAME, LASTPYDT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, BSSI_Facility_ID, USERID, DEX_ROW_ID FROM .B9000501 WHERE ( USERID > @USERID ) ORDER BY USERID ASC, DEX_ROW_ID ASC END ELSE IF @USERID_RS = @USERID_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, CUSTNMBR, CUSTNAME, LASTPYDT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, BSSI_Facility_ID, USERID, DEX_ROW_ID FROM .B9000501 WHERE USERID = @USERID_RS AND ( USERID > @USERID ) ORDER BY USERID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, CUSTNMBR, CUSTNAME, LASTPYDT, PRINCIPAL_AMOUNT, INTEREST_AMOUNT, CHRGAMNT, BSSI_Facility_ID, USERID, DEX_ROW_ID FROM .B9000501 WHERE USERID BETWEEN @USERID_RS AND @USERID_RE AND ( USERID > @USERID ) ORDER BY USERID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000501UN_2] TO [DYNGRP]
GO
