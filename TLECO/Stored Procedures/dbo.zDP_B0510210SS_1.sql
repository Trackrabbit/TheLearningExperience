SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B0510210SS_1] (@MJW_Setup_ID smallint) AS /* 12.00.0270.000 */ set nocount on SELECT TOP 1  MJW_Setup_ID, MJW_Distribution_Code, BSSI_DistributionNextNum, MJW_Investment_Code, BSSI_InvestmentNextNum, MJW_Redemption_Code, MJW_Redemption_Next_Numb, MJW_Redemption_NumLength, MJW_Transfer_Code, BSSI_TransferNextNumber, MJW_Distribution_Code1, BSSI_CertificateNextNum, MJW_Investor_Code, BSSI_InvestorNextNumber, MJW_Offering_Code, BSSI_OfferingNextNumber, MJW_Broker_Code, BSSI_BrokerNextNumber, IMS_Certificate_AutoNumb, SGMTNUMB, BSSI_Distribution_Prorat, BSSI_Trust_Label_CB, BSSI_Tax_Labels_System, BSSI_Capital_Call_Code, BSSI_CapitalCallNextNum, BSSI_Fund_Owner_Code, BSSI_FundOwnerNextNumber, BSSI_CommPaymentMethod, BSSI_Commission_Type, BSSI_Email_Subject, BSSI_PDF_PathName, BSSI_InvestCategoryID, BSSI_InvestmentType, BSSI_AccrualsAcctIdx, REALGAIN, REALLOSS, UNRLGAIN, UNRLLOSS, OFFINDX, REC_ACCT_IDX, INT_INCOME_ACCT_IDX, REC_OFFSET_ACCT_IDX, PAY_ACCT_IDX, PAY_OFFSET_ACCT_IDX, INT_EXP_ACCT_IDX, BSSI_IntrIncAccrAcctIdx, BSSI_IntrExpAccrAcctIdx, BSSI_AccrdIntrIncAcctIdx, BSSI_AccrdIntrExpAcctIdx, DEX_ROW_ID, BSSI_Email_Body FROM .B0510210 WHERE MJW_Setup_ID = @MJW_Setup_ID ORDER BY MJW_Setup_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B0510210SS_1] TO [DYNGRP]
GO
