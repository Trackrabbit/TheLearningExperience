SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B9000999SI] (@SCHEDULE_NUMBER char(21), @Schedule_Payment_Number smallint, @LNITMSEQ int, @DOCNUMBR char(21), @USERID char(15), @BSSI_RecalculateInterest tinyint, @BSSI_Billing_Start_Date datetime, @BSSI_Billing_End_Date datetime, @PRINCIPAL_BALANCE numeric(19,5), @CHRGAMNT numeric(19,5), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B9000999 (SCHEDULE_NUMBER, Schedule_Payment_Number, LNITMSEQ, DOCNUMBR, USERID, BSSI_RecalculateInterest, BSSI_Billing_Start_Date, BSSI_Billing_End_Date, PRINCIPAL_BALANCE, CHRGAMNT) VALUES ( @SCHEDULE_NUMBER, @Schedule_Payment_Number, @LNITMSEQ, @DOCNUMBR, @USERID, @BSSI_RecalculateInterest, @BSSI_Billing_Start_Date, @BSSI_Billing_End_Date, @PRINCIPAL_BALANCE, @CHRGAMNT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B9000999SI] TO [DYNGRP]
GO
