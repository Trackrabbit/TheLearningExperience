SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510068SI] (@MJW_Transfer_Number char(21), @MJW_Transfer_Date datetime, @SEQNUMBR int, @MJW_Investment_Number char(21), @MJW_Offering_ID char(21), @MJW_Series_ID char(21), @MJW_Certificate_Number char(21), @MJW_Unit_Price numeric(19,5), @MJW_Units_Purchased numeric(19,5), @MJW_Transfer_To_Investor char(15), @MJW_Units_Transfered numeric(19,5), @MJW_Accept_Date datetime, @MJW_Admit_Date datetime, @MJW_Transfer_Price numeric(19,5), @MJW_Transfer_Reason char(51), @MJW_NewInvestmentNumber char(21), @BSSI_EnterCertNum tinyint, @BSSI_NewCertNum char(21), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510068 (MJW_Transfer_Number, MJW_Transfer_Date, SEQNUMBR, MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, MJW_Certificate_Number, MJW_Unit_Price, MJW_Units_Purchased, MJW_Transfer_To_Investor, MJW_Units_Transfered, MJW_Accept_Date, MJW_Admit_Date, MJW_Transfer_Price, MJW_Transfer_Reason, MJW_NewInvestmentNumber, BSSI_EnterCertNum, BSSI_NewCertNum) VALUES ( @MJW_Transfer_Number, @MJW_Transfer_Date, @SEQNUMBR, @MJW_Investment_Number, @MJW_Offering_ID, @MJW_Series_ID, @MJW_Certificate_Number, @MJW_Unit_Price, @MJW_Units_Purchased, @MJW_Transfer_To_Investor, @MJW_Units_Transfered, @MJW_Accept_Date, @MJW_Admit_Date, @MJW_Transfer_Price, @MJW_Transfer_Reason, @MJW_NewInvestmentNumber, @BSSI_EnterCertNum, @BSSI_NewCertNum) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510068SI] TO [DYNGRP]
GO
