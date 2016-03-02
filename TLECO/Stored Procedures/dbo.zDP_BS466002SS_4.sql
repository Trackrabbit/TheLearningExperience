SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466002SS_4] (@BSSI_Tenant_Lease_Number char(25), @BSSI_Charge_ID char(25), @DATE1 datetime) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  VCHRNMBR, DOCTYPE, DOCDATE, BSSI_Allocated_Amt, BSSI_Exp_Adj_Amt, BSSI_Tenant_Lease_Number, BSSI_Charge_ID, YEAR1, DATE1, STRTDATE, ENDDATE, BSSI_Reconcile, BSSI_Is_Reconciled, From_Date, TODATE, BSSI_Doc_Status, LNSEQNBR, LOCNCODE, DUMYRCRD, DEX_ROW_ID FROM .BS466002 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Charge_ID = @BSSI_Charge_ID AND DATE1 = @DATE1 ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Charge_ID ASC, DATE1 ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466002SS_4] TO [DYNGRP]
GO
