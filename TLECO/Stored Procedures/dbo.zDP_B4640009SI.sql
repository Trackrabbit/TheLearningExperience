SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4640009SI] (@BSSI_Tenant_Lease_Number char(25), @LOCNCODE char(11), @BSSI_ReconciliationOpt smallint, @BSSI_ProrationOpt smallint, @BSSI_MRReconcileOpt smallint, @STRTDATE datetime, @ENDDATE datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B4640009 (BSSI_Tenant_Lease_Number, LOCNCODE, BSSI_ReconciliationOpt, BSSI_ProrationOpt, BSSI_MRReconcileOpt, STRTDATE, ENDDATE) VALUES ( @BSSI_Tenant_Lease_Number, @LOCNCODE, @BSSI_ReconciliationOpt, @BSSI_ProrationOpt, @BSSI_MRReconcileOpt, @STRTDATE, @ENDDATE) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4640009SI] TO [DYNGRP]
GO
