SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602204L_2] (@BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Contact_ID_RS char(25), @BSSI_Tenant_Lease_Number_RE char(25), @BSSI_Contact_ID_RE char(25)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B4602204 ORDER BY BSSI_Tenant_Lease_Number DESC, BSSI_Contact_ID DESC, DEX_ROW_ID DESC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B4602204 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND BSSI_Contact_ID BETWEEN @BSSI_Contact_ID_RS AND @BSSI_Contact_ID_RE ORDER BY BSSI_Tenant_Lease_Number DESC, BSSI_Contact_ID DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Contact_Option, BSSI_Contact_ID, ADRSCODE, NOTEINDX, DEX_ROW_ID FROM .B4602204 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Contact_ID BETWEEN @BSSI_Contact_ID_RS AND @BSSI_Contact_ID_RE ORDER BY BSSI_Tenant_Lease_Number DESC, BSSI_Contact_ID DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602204L_2] TO [DYNGRP]
GO
