SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602250N_2] (@BS int, @BSSI_Rev_Sharing_Type smallint, @BSSI_Tenant_Lease_Number char(25), @DEX_ROW_ID int, @BSSI_Rev_Sharing_Type_RS smallint, @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Rev_Sharing_Type_RE smallint, @BSSI_Tenant_Lease_Number_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Rev_Sharing_Type_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Rev_Sharing_Type, NOTEINDX, DEX_ROW_ID FROM .B4602250 WHERE ( BSSI_Rev_Sharing_Type = @BSSI_Rev_Sharing_Type AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Rev_Sharing_Type = @BSSI_Rev_Sharing_Type AND BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number OR BSSI_Rev_Sharing_Type > @BSSI_Rev_Sharing_Type ) ORDER BY BSSI_Rev_Sharing_Type ASC, BSSI_Tenant_Lease_Number ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Rev_Sharing_Type_RS = @BSSI_Rev_Sharing_Type_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Rev_Sharing_Type, NOTEINDX, DEX_ROW_ID FROM .B4602250 WHERE BSSI_Rev_Sharing_Type = @BSSI_Rev_Sharing_Type_RS AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND ( BSSI_Rev_Sharing_Type = @BSSI_Rev_Sharing_Type AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Rev_Sharing_Type = @BSSI_Rev_Sharing_Type AND BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number OR BSSI_Rev_Sharing_Type > @BSSI_Rev_Sharing_Type ) ORDER BY BSSI_Rev_Sharing_Type ASC, BSSI_Tenant_Lease_Number ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Rev_Sharing_Type, NOTEINDX, DEX_ROW_ID FROM .B4602250 WHERE BSSI_Rev_Sharing_Type BETWEEN @BSSI_Rev_Sharing_Type_RS AND @BSSI_Rev_Sharing_Type_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND ( BSSI_Rev_Sharing_Type = @BSSI_Rev_Sharing_Type AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Rev_Sharing_Type = @BSSI_Rev_Sharing_Type AND BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number OR BSSI_Rev_Sharing_Type > @BSSI_Rev_Sharing_Type ) ORDER BY BSSI_Rev_Sharing_Type ASC, BSSI_Tenant_Lease_Number ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602250N_2] TO [DYNGRP]
GO
