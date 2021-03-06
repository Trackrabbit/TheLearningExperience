SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510065SS_1] (@MJW_Transfer_Number char(21), @MJW_Investment_Number char(21), @MJW_Transfer_To_Investor char(15)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Transfer_Number, MJW_Transfer_Date, SEQNUMBR, MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, MJW_Certificate_Number, MJW_Unit_Price, MJW_Units_Purchased, MJW_Transfer_To_Investor, MJW_Units_Transfered, MJW_Accept_Date, MJW_Admit_Date, MJW_Transfer_Price, MJW_Transfer_Reason, MJW_NewInvestmentNumber, BSSI_NewCertNum, DEX_ROW_ID FROM .B0510065 WHERE MJW_Transfer_Number = @MJW_Transfer_Number AND MJW_Investment_Number = @MJW_Investment_Number AND MJW_Transfer_To_Investor = @MJW_Transfer_To_Investor ORDER BY MJW_Transfer_Number ASC, MJW_Investment_Number ASC, MJW_Transfer_To_Investor ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510065SS_1] TO [DYNGRP]
GO
