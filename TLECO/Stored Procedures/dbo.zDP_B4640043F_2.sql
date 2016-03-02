SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640043F_2] (@LOCNCODE_RS char(11), @BSSI_UnitAttribute_RS smallint, @BSSI_Tenant_Lease_Number_RS char(25), @LNSEQNBR_RS numeric(19,5), @LOCNCODE_RE char(11), @BSSI_UnitAttribute_RE smallint, @BSSI_Tenant_Lease_Number_RE char(25), @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @LOCNCODE_RS IS NULL BEGIN SELECT TOP 25  LOCNCODE, BSSI_UnitAttribute, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4640043 ORDER BY LOCNCODE ASC, BSSI_UnitAttribute ASC, BSSI_Tenant_Lease_Number ASC, LNSEQNBR ASC END ELSE IF @LOCNCODE_RS = @LOCNCODE_RE BEGIN SELECT TOP 25  LOCNCODE, BSSI_UnitAttribute, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4640043 WHERE LOCNCODE = @LOCNCODE_RS AND BSSI_UnitAttribute BETWEEN @BSSI_UnitAttribute_RS AND @BSSI_UnitAttribute_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY LOCNCODE ASC, BSSI_UnitAttribute ASC, BSSI_Tenant_Lease_Number ASC, LNSEQNBR ASC END ELSE BEGIN SELECT TOP 25  LOCNCODE, BSSI_UnitAttribute, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4640043 WHERE LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND BSSI_UnitAttribute BETWEEN @BSSI_UnitAttribute_RS AND @BSSI_UnitAttribute_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY LOCNCODE ASC, BSSI_UnitAttribute ASC, BSSI_Tenant_Lease_Number ASC, LNSEQNBR ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640043F_2] TO [DYNGRP]
GO
