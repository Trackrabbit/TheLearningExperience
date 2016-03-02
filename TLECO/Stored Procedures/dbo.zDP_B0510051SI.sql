SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510051SI] (@MJW_Investment_Number char(21), @MJW_Offering_ID char(21), @LNITMSEQ int, @CHEKNMBR char(21), @CHEKAMNT numeric(19,5), @DATERECD datetime, @MJW_Date_Deposited datetime, @MJW_Date_Acknowledge datetime, @MJW_Date_Accept datetime, @MJW_Date_Paid datetime, @RCPTNMBR char(21), @BSSI_Investment_Check_Vo tinyint, @BSSI_Facility_ID char(67), @DUMYRCRD tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B0510051 (MJW_Investment_Number, MJW_Offering_ID, LNITMSEQ, CHEKNMBR, CHEKAMNT, DATERECD, MJW_Date_Deposited, MJW_Date_Acknowledge, MJW_Date_Accept, MJW_Date_Paid, RCPTNMBR, BSSI_Investment_Check_Vo, BSSI_Facility_ID, DUMYRCRD) VALUES ( @MJW_Investment_Number, @MJW_Offering_ID, @LNITMSEQ, @CHEKNMBR, @CHEKAMNT, @DATERECD, @MJW_Date_Deposited, @MJW_Date_Acknowledge, @MJW_Date_Accept, @MJW_Date_Paid, @RCPTNMBR, @BSSI_Investment_Check_Vo, @BSSI_Facility_ID, @DUMYRCRD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510051SI] TO [DYNGRP]
GO
