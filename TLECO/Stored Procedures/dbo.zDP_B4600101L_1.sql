SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4600101L_1] (@BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Date_RS char(7), @BSSI_Tenant_Lease_Number_RE char(25), @BSSI_Date_RE char(7)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Date, BSSI_Sequence, DEX_ROW_ID FROM .B4600101 ORDER BY BSSI_Tenant_Lease_Number DESC, BSSI_Date DESC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Date, BSSI_Sequence, DEX_ROW_ID FROM .B4600101 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND BSSI_Date BETWEEN @BSSI_Date_RS AND @BSSI_Date_RE ORDER BY BSSI_Tenant_Lease_Number DESC, BSSI_Date DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Date, BSSI_Sequence, DEX_ROW_ID FROM .B4600101 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Date BETWEEN @BSSI_Date_RS AND @BSSI_Date_RE ORDER BY BSSI_Tenant_Lease_Number DESC, BSSI_Date DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4600101L_1] TO [DYNGRP]
GO
