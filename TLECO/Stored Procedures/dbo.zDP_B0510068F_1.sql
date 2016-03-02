SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510068F_1] (@MJW_Transfer_Number_RS char(21), @MJW_Investment_Number_RS char(21), @MJW_Transfer_To_Investor_RS char(15), @MJW_Transfer_Number_RE char(21), @MJW_Investment_Number_RE char(21), @MJW_Transfer_To_Investor_RE char(15)) AS /* 12.00.0270.000 */ set nocount on IF @MJW_Transfer_Number_RS IS NULL BEGIN SELECT TOP 25  MJW_Transfer_Number, MJW_Transfer_Date, SEQNUMBR, MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, MJW_Certificate_Number, MJW_Unit_Price, MJW_Units_Purchased, MJW_Transfer_To_Investor, MJW_Units_Transfered, MJW_Accept_Date, MJW_Admit_Date, MJW_Transfer_Price, MJW_Transfer_Reason, MJW_NewInvestmentNumber, BSSI_EnterCertNum, BSSI_NewCertNum, DEX_ROW_ID FROM .B0510068 ORDER BY MJW_Transfer_Number ASC, MJW_Investment_Number ASC, MJW_Transfer_To_Investor ASC END ELSE IF @MJW_Transfer_Number_RS = @MJW_Transfer_Number_RE BEGIN SELECT TOP 25  MJW_Transfer_Number, MJW_Transfer_Date, SEQNUMBR, MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, MJW_Certificate_Number, MJW_Unit_Price, MJW_Units_Purchased, MJW_Transfer_To_Investor, MJW_Units_Transfered, MJW_Accept_Date, MJW_Admit_Date, MJW_Transfer_Price, MJW_Transfer_Reason, MJW_NewInvestmentNumber, BSSI_EnterCertNum, BSSI_NewCertNum, DEX_ROW_ID FROM .B0510068 WHERE MJW_Transfer_Number = @MJW_Transfer_Number_RS AND MJW_Investment_Number BETWEEN @MJW_Investment_Number_RS AND @MJW_Investment_Number_RE AND MJW_Transfer_To_Investor BETWEEN @MJW_Transfer_To_Investor_RS AND @MJW_Transfer_To_Investor_RE ORDER BY MJW_Transfer_Number ASC, MJW_Investment_Number ASC, MJW_Transfer_To_Investor ASC END ELSE BEGIN SELECT TOP 25  MJW_Transfer_Number, MJW_Transfer_Date, SEQNUMBR, MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, MJW_Certificate_Number, MJW_Unit_Price, MJW_Units_Purchased, MJW_Transfer_To_Investor, MJW_Units_Transfered, MJW_Accept_Date, MJW_Admit_Date, MJW_Transfer_Price, MJW_Transfer_Reason, MJW_NewInvestmentNumber, BSSI_EnterCertNum, BSSI_NewCertNum, DEX_ROW_ID FROM .B0510068 WHERE MJW_Transfer_Number BETWEEN @MJW_Transfer_Number_RS AND @MJW_Transfer_Number_RE AND MJW_Investment_Number BETWEEN @MJW_Investment_Number_RS AND @MJW_Investment_Number_RE AND MJW_Transfer_To_Investor BETWEEN @MJW_Transfer_To_Investor_RS AND @MJW_Transfer_To_Investor_RE ORDER BY MJW_Transfer_Number ASC, MJW_Investment_Number ASC, MJW_Transfer_To_Investor ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510068F_1] TO [DYNGRP]
GO
