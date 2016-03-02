SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640002SS_2] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_Charge_ID char(25), @BSSI_LineSeqNumber numeric(19,5), @BSSI_OccupancyTypeID char(25)) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_Charge_ID, BSSI_LineSeqNumber, LNSEQNBR, BSSI_OccupancyTypeID, BSSI_Description, DEX_ROW_ID FROM .B4640002 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND LOCNCODE = @LOCNCODE AND BSSI_Charge_ID = @BSSI_Charge_ID AND BSSI_LineSeqNumber = @BSSI_LineSeqNumber AND BSSI_OccupancyTypeID = @BSSI_OccupancyTypeID ORDER BY BSSI_Tenant_Lease_Number ASC, LOCNCODE ASC, BSSI_Charge_ID ASC, BSSI_LineSeqNumber ASC, BSSI_OccupancyTypeID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640002SS_2] TO [DYNGRP]
GO
