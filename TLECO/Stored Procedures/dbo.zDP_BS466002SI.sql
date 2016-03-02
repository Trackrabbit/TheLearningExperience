SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_BS466002SI] (@VCHRNMBR char(21), @DOCTYPE smallint, @DOCDATE datetime, @BSSI_Allocated_Amt numeric(19,5), @BSSI_Exp_Adj_Amt numeric(19,5), @BSSI_Tenant_Lease_Number char(25), @BSSI_Charge_ID char(25), @YEAR1 smallint, @DATE1 datetime, @STRTDATE datetime, @ENDDATE datetime, @BSSI_Reconcile tinyint, @BSSI_Is_Reconciled tinyint, @From_Date datetime, @TODATE datetime, @BSSI_Doc_Status smallint, @LNSEQNBR numeric(19,5), @LOCNCODE char(11), @DUMYRCRD tinyint, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .BS466002 (VCHRNMBR, DOCTYPE, DOCDATE, BSSI_Allocated_Amt, BSSI_Exp_Adj_Amt, BSSI_Tenant_Lease_Number, BSSI_Charge_ID, YEAR1, DATE1, STRTDATE, ENDDATE, BSSI_Reconcile, BSSI_Is_Reconciled, From_Date, TODATE, BSSI_Doc_Status, LNSEQNBR, LOCNCODE, DUMYRCRD) VALUES ( @VCHRNMBR, @DOCTYPE, @DOCDATE, @BSSI_Allocated_Amt, @BSSI_Exp_Adj_Amt, @BSSI_Tenant_Lease_Number, @BSSI_Charge_ID, @YEAR1, @DATE1, @STRTDATE, @ENDDATE, @BSSI_Reconcile, @BSSI_Is_Reconciled, @From_Date, @TODATE, @BSSI_Doc_Status, @LNSEQNBR, @LOCNCODE, @DUMYRCRD) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_BS466002SI] TO [DYNGRP]
GO
