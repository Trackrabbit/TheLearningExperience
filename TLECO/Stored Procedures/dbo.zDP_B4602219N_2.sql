SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602219N_2] (@BS int, @BSSI_Tenant_Lease_Number char(25), @BSSI_Equipment_ID char(25), @DEX_ROW_ID int, @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Equipment_ID_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25), @BSSI_Equipment_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Equipment_Origin, BSSI_Equipment_ID, ITEMNMBR, SERLNMBR, BSSI_Asset_Suffix, BSSI_Index, NOTEINDX, DEX_ROW_ID FROM .B4602219 WHERE ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Equipment_ID = @BSSI_Equipment_ID AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Equipment_ID > @BSSI_Equipment_ID OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Equipment_ID ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Equipment_Origin, BSSI_Equipment_ID, ITEMNMBR, SERLNMBR, BSSI_Asset_Suffix, BSSI_Index, NOTEINDX, DEX_ROW_ID FROM .B4602219 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND BSSI_Equipment_ID BETWEEN @BSSI_Equipment_ID_RS AND @BSSI_Equipment_ID_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Equipment_ID = @BSSI_Equipment_ID AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Equipment_ID > @BSSI_Equipment_ID OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Equipment_ID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Equipment_Origin, BSSI_Equipment_ID, ITEMNMBR, SERLNMBR, BSSI_Asset_Suffix, BSSI_Index, NOTEINDX, DEX_ROW_ID FROM .B4602219 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Equipment_ID BETWEEN @BSSI_Equipment_ID_RS AND @BSSI_Equipment_ID_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Equipment_ID = @BSSI_Equipment_ID AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Equipment_ID > @BSSI_Equipment_ID OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Equipment_ID ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602219N_2] TO [DYNGRP]
GO
