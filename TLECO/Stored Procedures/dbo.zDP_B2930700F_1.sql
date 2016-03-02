SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930700F_1] (@BSSI_Lease_Loan_Number_RS char(17), @YEAR1_RS smallint, @JRNENTRY_RS int, @BSSI_Lease_Loan_Number_RE char(17), @YEAR1_RE smallint, @JRNENTRY_RE int) AS /* 12.00.0311.000 */ set nocount on IF @BSSI_Lease_Loan_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, YEAR1, JRNENTRY, BSSI_LongDescription, DOCNUMBR, DOCDATE, ORDOCAMT, DEX_ROW_TS, DEX_ROW_ID FROM .B2930700 ORDER BY BSSI_Lease_Loan_Number ASC, YEAR1 ASC, JRNENTRY ASC END ELSE IF @BSSI_Lease_Loan_Number_RS = @BSSI_Lease_Loan_Number_RE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, YEAR1, JRNENTRY, BSSI_LongDescription, DOCNUMBR, DOCDATE, ORDOCAMT, DEX_ROW_TS, DEX_ROW_ID FROM .B2930700 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number_RS AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY BSSI_Lease_Loan_Number ASC, YEAR1 ASC, JRNENTRY ASC END ELSE BEGIN SELECT TOP 25  BSSI_Lease_Loan_Number, SCHEDULE_NUMBER, YEAR1, JRNENTRY, BSSI_LongDescription, DOCNUMBR, DOCDATE, ORDOCAMT, DEX_ROW_TS, DEX_ROW_ID FROM .B2930700 WHERE BSSI_Lease_Loan_Number BETWEEN @BSSI_Lease_Loan_Number_RS AND @BSSI_Lease_Loan_Number_RE AND YEAR1 BETWEEN @YEAR1_RS AND @YEAR1_RE AND JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY BSSI_Lease_Loan_Number ASC, YEAR1 ASC, JRNENTRY ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930700F_1] TO [DYNGRP]
GO
