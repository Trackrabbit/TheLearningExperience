SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900550SD] (@BSSI_Lease_Loan_Number char(17), @Schedule_Payment_Number smallint, @USERID char(15), @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0270.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B2900550 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND Schedule_Payment_Number = @Schedule_Payment_Number AND USERID = @USERID AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B2900550 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND Schedule_Payment_Number = @Schedule_Payment_Number AND USERID = @USERID SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900550SD] TO [DYNGRP]
GO
