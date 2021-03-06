SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640043SS_2] (@LOCNCODE char(11), @BSSI_UnitAttribute smallint, @BSSI_Tenant_Lease_Number char(25), @LNSEQNBR numeric(19,5)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  LOCNCODE, BSSI_UnitAttribute, BSSI_PropertyAttrOldVal, BSSI_PropertyAttrNewVal, DATE1, USERID, LNSEQNBR, BSSI_Comment, Effective_Date, BSSI_Tenant_Lease_Number, DEX_ROW_ID FROM .B4640043 WHERE LOCNCODE = @LOCNCODE AND BSSI_UnitAttribute = @BSSI_UnitAttribute AND BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LNSEQNBR = @LNSEQNBR ORDER BY LOCNCODE ASC, BSSI_UnitAttribute ASC, BSSI_Tenant_Lease_Number ASC, LNSEQNBR ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640043SS_2] TO [DYNGRP]
GO
