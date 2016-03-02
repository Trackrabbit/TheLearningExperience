SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602247SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @BSSI_Abatement_Charge_ID char(25), @LNSEQNBR numeric(19,5), @BSSI_Abatement_Amount numeric(19,5), @USERID char(15), @USERDATE datetime, @BSSI_Comment char(101), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4602247 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, BSSI_Abatement_Charge_ID, LNSEQNBR, BSSI_Abatement_Amount, USERID, USERDATE, BSSI_Comment) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @BSSI_Abatement_Charge_ID, @LNSEQNBR, @BSSI_Abatement_Amount, @USERID, @USERDATE, @BSSI_Comment) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602247SI] TO [DYNGRP]
GO
