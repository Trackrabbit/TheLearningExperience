SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MC10000N_1] (@BS int, @RVLUEID char(15), @RVLUEID_RS char(15), @RVLUEID_RE char(15)) AS /* 14.00.0084.000 */ set nocount on IF @RVLUEID_RS IS NULL BEGIN SELECT TOP 25  RVLUEID, RVLSRIES, RVLUOPTN, GAINLOSS, TRXDATE, REVSETRX, RVRSNGDT, RVLUYROP, YEAR1, RVLUPDOP, PERIODID, RVLURTOP, SORTBY, INCLDPAR, Include_Invoice, Include_Debit_Memo, Include_Finance_Charge, Include_ServiceRepair, Include_Credit_Memo, Include_Return, Include_Cash_Receipt, Include_Misc_Charge, Include_Payment, STTACNUM_1, STTACNUM_2, STTACNUM_3, STTACNUM_4, EACCNBR_1, EACCNBR_2, EACCNBR_3, EACCNBR_4, STTCLSID, ENDCLSID, STTUDEF1, ENUSRDF1, StartCustOrVendID, EndCustOrVendID, CUTOFDAT, MCRVALHDRMSGS, Limit_Document_Gains, DEX_ROW_ID FROM .MC10000 WHERE ( RVLUEID > @RVLUEID ) ORDER BY RVLUEID ASC END ELSE IF @RVLUEID_RS = @RVLUEID_RE BEGIN SELECT TOP 25  RVLUEID, RVLSRIES, RVLUOPTN, GAINLOSS, TRXDATE, REVSETRX, RVRSNGDT, RVLUYROP, YEAR1, RVLUPDOP, PERIODID, RVLURTOP, SORTBY, INCLDPAR, Include_Invoice, Include_Debit_Memo, Include_Finance_Charge, Include_ServiceRepair, Include_Credit_Memo, Include_Return, Include_Cash_Receipt, Include_Misc_Charge, Include_Payment, STTACNUM_1, STTACNUM_2, STTACNUM_3, STTACNUM_4, EACCNBR_1, EACCNBR_2, EACCNBR_3, EACCNBR_4, STTCLSID, ENDCLSID, STTUDEF1, ENUSRDF1, StartCustOrVendID, EndCustOrVendID, CUTOFDAT, MCRVALHDRMSGS, Limit_Document_Gains, DEX_ROW_ID FROM .MC10000 WHERE RVLUEID = @RVLUEID_RS AND ( RVLUEID > @RVLUEID ) ORDER BY RVLUEID ASC END ELSE BEGIN SELECT TOP 25  RVLUEID, RVLSRIES, RVLUOPTN, GAINLOSS, TRXDATE, REVSETRX, RVRSNGDT, RVLUYROP, YEAR1, RVLUPDOP, PERIODID, RVLURTOP, SORTBY, INCLDPAR, Include_Invoice, Include_Debit_Memo, Include_Finance_Charge, Include_ServiceRepair, Include_Credit_Memo, Include_Return, Include_Cash_Receipt, Include_Misc_Charge, Include_Payment, STTACNUM_1, STTACNUM_2, STTACNUM_3, STTACNUM_4, EACCNBR_1, EACCNBR_2, EACCNBR_3, EACCNBR_4, STTCLSID, ENDCLSID, STTUDEF1, ENUSRDF1, StartCustOrVendID, EndCustOrVendID, CUTOFDAT, MCRVALHDRMSGS, Limit_Document_Gains, DEX_ROW_ID FROM .MC10000 WHERE RVLUEID BETWEEN @RVLUEID_RS AND @RVLUEID_RE AND ( RVLUEID > @RVLUEID ) ORDER BY RVLUEID ASC END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MC10000N_1] TO [DYNGRP]
GO