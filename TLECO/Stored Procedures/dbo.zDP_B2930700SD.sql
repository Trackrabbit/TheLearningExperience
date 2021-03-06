SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2930700SD] (@BSSI_Lease_Loan_Number char(17), @YEAR1 smallint, @JRNENTRY int, @RowsAffected int OUT, @RID int = 0, @TN char(99) = 'TN') AS /* 12.00.0311.000 */ set nocount on BEGIN IF @RID > 0 DELETE FROM .B2930700 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND YEAR1 = @YEAR1 AND JRNENTRY = @JRNENTRY AND ( NOT EXISTS ( SELECT 1 FROM tempdb.dbo.DEX_LOCK WHERE row_id = @RID AND table_path_name = @TN ) ) ELSE DELETE FROM .B2930700 WHERE BSSI_Lease_Loan_Number = @BSSI_Lease_Loan_Number AND YEAR1 = @YEAR1 AND JRNENTRY = @JRNENTRY SELECT @RowsAffected = @@rowcount END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2930700SD] TO [DYNGRP]
GO
