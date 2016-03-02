SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510065SS_2] (@BSSI_NewCertNum char(21)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Transfer_Number, MJW_Transfer_Date, SEQNUMBR, MJW_Investment_Number, MJW_Offering_ID, MJW_Series_ID, MJW_Certificate_Number, MJW_Unit_Price, MJW_Units_Purchased, MJW_Transfer_To_Investor, MJW_Units_Transfered, MJW_Accept_Date, MJW_Admit_Date, MJW_Transfer_Price, MJW_Transfer_Reason, MJW_NewInvestmentNumber, BSSI_NewCertNum, DEX_ROW_ID FROM .B0510065 WHERE BSSI_NewCertNum = @BSSI_NewCertNum ORDER BY BSSI_NewCertNum ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510065SS_2] TO [DYNGRP]
GO
