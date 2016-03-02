SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602270L_2] (@JRNENTRY_RS int, @JRNENTRY_RE int) AS /* 12.00.0311.000 */ set nocount on IF @JRNENTRY_RS IS NULL BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Description, LNITMSEQ, CMPNTSEQ, BSSI_Deposit_Type_ID, DSCRIPTN, DOCAMNT, SLSAMNT, OFFINDX, BSSI_JE_Amt, BSSI_Deposit_Acc_Index, ACTINDX, CREDIT_MEMO_DOC_NUM, JRNENTRY, TRXDATE, DEX_ROW_ID FROM .B4602270 ORDER BY JRNENTRY DESC, DEX_ROW_ID DESC END ELSE IF @JRNENTRY_RS = @JRNENTRY_RE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Description, LNITMSEQ, CMPNTSEQ, BSSI_Deposit_Type_ID, DSCRIPTN, DOCAMNT, SLSAMNT, OFFINDX, BSSI_JE_Amt, BSSI_Deposit_Acc_Index, ACTINDX, CREDIT_MEMO_DOC_NUM, JRNENTRY, TRXDATE, DEX_ROW_ID FROM .B4602270 WHERE JRNENTRY = @JRNENTRY_RS ORDER BY JRNENTRY DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  BSSI_Tenant_Lease_Number, BSSI_Description, LNITMSEQ, CMPNTSEQ, BSSI_Deposit_Type_ID, DSCRIPTN, DOCAMNT, SLSAMNT, OFFINDX, BSSI_JE_Amt, BSSI_Deposit_Acc_Index, ACTINDX, CREDIT_MEMO_DOC_NUM, JRNENTRY, TRXDATE, DEX_ROW_ID FROM .B4602270 WHERE JRNENTRY BETWEEN @JRNENTRY_RS AND @JRNENTRY_RE ORDER BY JRNENTRY DESC, DEX_ROW_ID DESC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602270L_2] TO [DYNGRP]
GO