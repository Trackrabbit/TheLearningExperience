SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B4602260SS_4] (@DATE1 datetime) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  BSSI_Tenant_Lease_Number, LNITMSEQ, BSSI_Deposit_Type_ID, CMTrxNum, BSSI_Reversing_Trx_Numbe, CMRECNUM, BSSI_Record_Number, DSCRIPTN, RcpType, BSSI_Receipt_Type, CHEKBKID, CARDNAME, DATE1, BSSI_Reversing_Date, BSSI_Deposit_Account_Num_1, BSSI_Deposit_Account_Num_2, BSSI_Deposit_Account_Num_3, BSSI_Deposit_Account_Num_4, DOCAMNT, BSSI_Reversing_Amount, BSSI_Is_Invoiced, BSSI_Is_Reverted, BSSI_Cash_Trx_Type, BSSI_Reversing_Trx_Type, NOTEINDX, SLSAMNT, BSSI_JE_Amt, DEX_ROW_ID FROM .B4602260 WHERE DATE1 = @DATE1 ORDER BY DATE1 ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B4602260SS_4] TO [DYNGRP]
GO
