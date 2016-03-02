SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510051SS_1] (@MJW_Offering_ID char(21), @MJW_Investment_Number char(21), @LNITMSEQ int) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Investment_Number, MJW_Offering_ID, LNITMSEQ, CHEKNMBR, CHEKAMNT, DATERECD, MJW_Date_Deposited, MJW_Date_Acknowledge, MJW_Date_Accept, MJW_Date_Paid, RCPTNMBR, BSSI_Investment_Check_Vo, BSSI_Facility_ID, DUMYRCRD, DEX_ROW_ID FROM .B0510051 WHERE MJW_Offering_ID = @MJW_Offering_ID AND MJW_Investment_Number = @MJW_Investment_Number AND LNITMSEQ = @LNITMSEQ ORDER BY MJW_Offering_ID ASC, MJW_Investment_Number ASC, LNITMSEQ ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510051SS_1] TO [DYNGRP]
GO
