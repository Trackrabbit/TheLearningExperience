SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640050SS_1] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @BSSI_ContributionAttrib smallint, @LNSEQNBR numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, BSSI_Charge_ID, BSSI_ContributionAttrib, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date, DEX_ROW_ID FROM .B4640050 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND LNITMSEQ = @LNITMSEQ AND BSSI_ContributionAttrib = @BSSI_ContributionAttrib AND LNSEQNBR = @LNSEQNBR ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, LNITMSEQ ASC, BSSI_ContributionAttrib ASC, LNSEQNBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640050SS_1] TO [DYNGRP]
GO
