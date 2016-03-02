SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602270N_4] (@BS int, @BSSI_Tenant_Lease_Number char(25), @BSSI_Deposit_Type_ID char(25), @LNITMSEQ int, @DEX_ROW_ID int, @BSSI_Tenant_Lease_Number_RS char(25), @BSSI_Deposit_Type_ID_RS char(25), @LNITMSEQ_RS int, @BSSI_Tenant_Lease_Number_RE char(25), @BSSI_Deposit_Type_ID_RE char(25), @LNITMSEQ_RE int) AS /* 12.00.0311.000 */ set nocount on IF @BSSI_Tenant_Lease_Number_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Description, LNITMSEQ, CMPNTSEQ, BSSI_Deposit_Type_ID, DSCRIPTN, DOCAMNT, SLSAMNT, OFFINDX, BSSI_JE_Amt, BSSI_Deposit_Acc_Index, ACTINDX, CREDIT_MEMO_DOC_NUM, JRNENTRY, TRXDATE, DEX_ROW_ID FROM .B4602270 WHERE ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Deposit_Type_ID = @BSSI_Deposit_Type_ID AND LNITMSEQ = @LNITMSEQ AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Deposit_Type_ID = @BSSI_Deposit_Type_ID AND LNITMSEQ > @LNITMSEQ OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Deposit_Type_ID > @BSSI_Deposit_Type_ID OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Deposit_Type_ID ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END ELSE IF @BSSI_Tenant_Lease_Number_RS = @BSSI_Tenant_Lease_Number_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Description, LNITMSEQ, CMPNTSEQ, BSSI_Deposit_Type_ID, DSCRIPTN, DOCAMNT, SLSAMNT, OFFINDX, BSSI_JE_Amt, BSSI_Deposit_Acc_Index, ACTINDX, CREDIT_MEMO_DOC_NUM, JRNENTRY, TRXDATE, DEX_ROW_ID FROM .B4602270 WHERE BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number_RS AND BSSI_Deposit_Type_ID BETWEEN @BSSI_Deposit_Type_ID_RS AND @BSSI_Deposit_Type_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Deposit_Type_ID = @BSSI_Deposit_Type_ID AND LNITMSEQ = @LNITMSEQ AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Deposit_Type_ID = @BSSI_Deposit_Type_ID AND LNITMSEQ > @LNITMSEQ OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Deposit_Type_ID > @BSSI_Deposit_Type_ID OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Deposit_Type_ID ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Description, LNITMSEQ, CMPNTSEQ, BSSI_Deposit_Type_ID, DSCRIPTN, DOCAMNT, SLSAMNT, OFFINDX, BSSI_JE_Amt, BSSI_Deposit_Acc_Index, ACTINDX, CREDIT_MEMO_DOC_NUM, JRNENTRY, TRXDATE, DEX_ROW_ID FROM .B4602270 WHERE BSSI_Tenant_Lease_Number BETWEEN @BSSI_Tenant_Lease_Number_RS AND @BSSI_Tenant_Lease_Number_RE AND BSSI_Deposit_Type_ID BETWEEN @BSSI_Deposit_Type_ID_RS AND @BSSI_Deposit_Type_ID_RE AND LNITMSEQ BETWEEN @LNITMSEQ_RS AND @LNITMSEQ_RE AND ( BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Deposit_Type_ID = @BSSI_Deposit_Type_ID AND LNITMSEQ = @LNITMSEQ AND DEX_ROW_ID > @DEX_ROW_ID OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Deposit_Type_ID = @BSSI_Deposit_Type_ID AND LNITMSEQ > @LNITMSEQ OR BSSI_Tenant_Lease_Number = @BSSI_Tenant_Lease_Number AND BSSI_Deposit_Type_ID > @BSSI_Deposit_Type_ID OR BSSI_Tenant_Lease_Number > @BSSI_Tenant_Lease_Number ) ORDER BY BSSI_Tenant_Lease_Number ASC, BSSI_Deposit_Type_ID ASC, LNITMSEQ ASC, DEX_ROW_ID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602270N_4] TO [DYNGRP]
GO
