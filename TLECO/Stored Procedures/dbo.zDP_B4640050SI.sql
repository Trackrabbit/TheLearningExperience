SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640050SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @LNITMSEQ int, @BSSI_Charge_ID char(25), @BSSI_ContributionAttrib smallint, @BSSI_PropertyAttrOldVal char(21), @BSSI_PropertyAttrNewVal char(21), @DATE1 datetime, @USERID char(15), @LNSEQNBR numeric(19,5), @BSSI_Comment char(101), @Effective_Date datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640050 (BSSI_Tenant_Lease_Number, LOCNCODE, LNITMSEQ, BSSI_Charge_ID, BSSI_ContributionAttrib, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @LNITMSEQ, @BSSI_Charge_ID, @BSSI_ContributionAttrib, @BSSI_PropertyAttrOldVal, @BSSI_PropertyAttrNewVal, @DATE1, @USERID, @LNSEQNBR, @BSSI_Comment, @Effective_Date) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640050SI] TO [DYNGRP]
GO
