SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600101SI] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Date char(7), @BSSI_Sequence char(1), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4600101 (BSSI_Tenant_Lease_Number, BSSI_Date, BSSI_Sequence) VALUES ( @BSSI_Tenant_Lease_Number, @BSSI_Date, @BSSI_Sequence) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600101SI] TO [DYNGRP]
GO
