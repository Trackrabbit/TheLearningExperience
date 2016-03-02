SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2920990SI] (@DOCNUMBR char(21), @CUSTNMBR char(15), @BSSI_Lease_Loan_Number char(17), @Schedule_Payment_Number smallint, @BSSI_IsAccountSubs tinyint, @BSSI_IsIntercompany tinyint, @BSSI_IsProcessed tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2920990 (DOCNUMBR, CUSTNMBR, BSSI_Lease_Loan_Number, Schedule_Payment_Number, BSSI_IsAccountSubs, BSSI_IsIntercompany, BSSI_IsProcessed) VALUES ( @DOCNUMBR, @CUSTNMBR, @BSSI_Lease_Loan_Number, @Schedule_Payment_Number, @BSSI_IsAccountSubs, @BSSI_IsIntercompany, @BSSI_IsProcessed) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2920990SI] TO [DYNGRP]
GO
