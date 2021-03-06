SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602212L_2] (@BSSI_Keys_Lock_RS tinyint, @BSSI_Keys_Lock_RE tinyint) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Keys_Lock_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Keys_Lock, DEX_ROW_ID FROM .B4602212 ORDER BY BSSI_Keys_Lock DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Keys_Lock_RS = @BSSI_Keys_Lock_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Keys_Lock, DEX_ROW_ID FROM .B4602212 WHERE BSSI_Keys_Lock = @BSSI_Keys_Lock_RS ORDER BY BSSI_Keys_Lock DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Keys_Lock, DEX_ROW_ID FROM .B4602212 WHERE BSSI_Keys_Lock BETWEEN @BSSI_Keys_Lock_RS AND @BSSI_Keys_Lock_RE ORDER BY BSSI_Keys_Lock DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602212L_2] TO [DYNGRP]
GO
