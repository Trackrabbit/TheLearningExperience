SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640050L_1] (@BSSI_Tenant_Lease_Number_RS char(25), @LOCNCODE_RS char(11), @LNITMSEQ_RS int, @BSSI_ContributionAttrib_RS smallint, @LNSEQNBR_RS numeric(19,5), @BSSI_Tenant_Lease_Number_RE char(25), @LOCNCODE_RE char(11), @LNITMSEQ_RE int, @BSSI_ContributionAttrib_RE smallint, @LNSEQNBR_RE numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, BSSI_Charge_ID, BSSI_ContributionAttrib, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date, DEX_ROW_ID FROM .B4640050 ORDER BY BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, LNITMSEQ DESC, BSSI_ContributionAttrib DESC, LNSEQNBR DESC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, BSSI_Charge_ID, BSSI_ContributionAttrib, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date, DEX_ROW_ID FROM .B4640050 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND BSSI_ContributionAttrib BETWEEN @BSSI_ContributionAttrib_RS AND @BSSI_ContributionAttrib_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, LNITMSEQ DESC, BSSI_ContributionAttrib DESC, LNSEQNBR DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, BSSI_Charge_ID, BSSI_ContributionAttrib, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date, DEX_ROW_ID FROM .B4640050 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND LOCNCODE BETWEEN @LOCNCODE_RS AND @LOCNCODE_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND BSSI_ContributionAttrib BETWEEN @BSSI_ContributionAttrib_RS AND @BSSI_ContributionAttrib_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY BSSI_Tenant_Lease_Number DESC, LOCNCODE DESC, LNITMSEQ DESC, BSSI_ContributionAttrib DESC, LNSEQNBR DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640050L_1] TO [DYNGRP]
GO
