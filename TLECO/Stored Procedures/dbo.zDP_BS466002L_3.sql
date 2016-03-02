SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466002L_3] (@VCHRNMBR_RS char(21), @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Charge_ID_RS char(25), @DATE1_RS datetime, @VCHRNMBR_RE char(21), @BSSI_Tenant_Lease_Number_RE char(25), @BSSI_Charge_ID_RE char(25), @DATE1_RE datetime) AS /* 12.00.0270.000 */ set nocount on IF @VCHRNMBR_RS IS NULL BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, DOCDATE, BSSI_Allocated_Amt, BSSI_Exp_Adj_Amt, BSSI_Tenant_Lease_Number, BSSI_Charge_ID, YEAR1, DATE1, STRTDATE, ENDDATE, BSSI_Reconcile, BSSI_Is_Reconciled, From_Date, TODATE, BSSI_Doc_Status, LNSEQNBR, LOCNCODE, DUMYRCRD, DEX_ROW_ID FROM .BS466002 ORDER BY VCHRNMBR DESC, BSSI_Tenant_Lease_Number DESC, BSSI_Charge_ID DESC, DATE1 DESC, DEX_ROW_ID DESC END ELSE IF @VCHRNMBR_RS = @VCHRNMBR_RE BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, DOCDATE, BSSI_Allocated_Amt, BSSI_Exp_Adj_Amt, BSSI_Tenant_Lease_Number, BSSI_Charge_ID, YEAR1, DATE1, STRTDATE, ENDDATE, BSSI_Reconcile, BSSI_Is_Reconciled, From_Date, TODATE, BSSI_Doc_Status, LNSEQNBR, LOCNCODE, DUMYRCRD, DEX_ROW_ID FROM .BS466002 WHERE VCHRNMBR = @VCHRNMBR_RS AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE ORDER BY VCHRNMBR DESC, BSSI_Tenant_Lease_Number DESC, BSSI_Charge_ID DESC, DATE1 DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  VCHRNMBR, DOCTYPE, DOCDATE, BSSI_Allocated_Amt, BSSI_Exp_Adj_Amt, BSSI_Tenant_Lease_Number, BSSI_Charge_ID, YEAR1, DATE1, STRTDATE, ENDDATE, BSSI_Reconcile, BSSI_Is_Reconciled, From_Date, TODATE, BSSI_Doc_Status, LNSEQNBR, LOCNCODE, DUMYRCRD, DEX_ROW_ID FROM .BS466002 WHERE VCHRNMBR BETWEEN @VCHRNMBR_RS AND @VCHRNMBR_RE AND BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Charge_ID BETWEEN @BSSI_Charge_ID_RS AND @BSSI_Charge_ID_RE AND DATE1 BETWEEN @DATE1_RS AND @DATE1_RE ORDER BY VCHRNMBR DESC, BSSI_Tenant_Lease_Number DESC, BSSI_Charge_ID DESC, DATE1 DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466002L_3] TO [DYNGRP]
GO
