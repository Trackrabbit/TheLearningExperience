SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640002SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @BSSI_LineSeqNumber numeric(19,5), @LNSEQNBR numeric(19,5), @BSSI_OccupancyTypeID char(25), @BSSI_Description char(51), @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640002 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, BSSI_LineSeqNumber, LNSEQNBR, BSSI_OccupancyTypeID, BSSI_Description) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_Charge_ID, @BSSI_LineSeqNumber, @LNSEQNBR, @BSSI_OccupancyTypeID, @BSSI_Description) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640002SI] TO [DYNGRP]
GO
