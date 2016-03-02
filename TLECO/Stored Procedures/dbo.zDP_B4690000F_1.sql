SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4690000F_1] (@BSSI_Description_RS char(51), @BSSI_Description_RE char(51)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Description_RS IS NULL BEGIN SELECT TOP 25  BSSI_Description, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4690000 ORDER BY BSSI_Description ASC END ELSE IF @BSSI_Description_RS = @BSSI_Description_RE BEGIN SELECT TOP 25  BSSI_Description, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4690000 WHERE BSSI_Description = @BSSI_Description_RS ORDER BY BSSI_Description ASC END ELSE BEGIN SELECT TOP 25  BSSI_Description, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4690000 WHERE BSSI_Description BETWEEN @BSSI_Description_RS AND @BSSI_Description_RE ORDER BY BSSI_Description ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4690000F_1] TO [DYNGRP]
GO
