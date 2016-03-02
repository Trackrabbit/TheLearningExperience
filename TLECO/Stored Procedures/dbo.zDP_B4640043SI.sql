SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640043SI] (@LOCNCODE char(11), @BSSI_UnitAttribute smallint, @BSSI_PropertyAttrOldVal char(21), @BSSI_PropertyAttrNewVal char(21), @DATE1 datetime, @USERID char(15), @LNSEQNBR numeric(19,5), @BSSI_Comment char(101), @Effective_Date datetime, @BSSI_Tenant_Lease_Number char(25), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640043 (LOCNCODE, BSSI_UnitAttribute, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date, BSSI_Tenant_Lease_Number) VALUES ( @LOCNCODE, @BSSI_UnitAttribute, @BSSI_PropertyAttrOldVal, @BSSI_PropertyAttrNewVal, @DATE1, @USERID, @LNSEQNBR, @BSSI_Comment, @Effective_Date, @BSSI_Tenant_Lease_Number) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640043SI] TO [DYNGRP]
GO
