CREATE TABLE [dbo].[B0510210]
(
[MJW_Setup_ID] [smallint] NOT NULL,
[MJW_Distribution_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DistributionNextNum] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investment_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestmentNextNum] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Redemption_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Redemption_Next_Numb] [int] NOT NULL,
[MJW_Redemption_NumLength] [smallint] NOT NULL,
[MJW_Transfer_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_TransferNextNumber] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Distribution_Code1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_CertificateNextNum] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investor_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestorNextNumber] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_OfferingNextNumber] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Broker_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_BrokerNextNumber] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMS_Certificate_AutoNumb] [tinyint] NOT NULL,
[SGMTNUMB] [smallint] NOT NULL,
[BSSI_Distribution_Prorat] [tinyint] NOT NULL,
[BSSI_Trust_Label_CB] [tinyint] NOT NULL,
[BSSI_Tax_Labels_System] [tinyint] NOT NULL,
[BSSI_Capital_Call_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_CapitalCallNextNum] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Fund_Owner_Code] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_FundOwnerNextNumber] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_CommPaymentMethod] [smallint] NOT NULL,
[BSSI_Commission_Type] [smallint] NOT NULL,
[BSSI_Email_Subject] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_PDF_PathName] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestCategoryID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_InvestmentType] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_AccrualsAcctIdx] [int] NOT NULL,
[REALGAIN] [int] NOT NULL,
[REALLOSS] [int] NOT NULL,
[UNRLGAIN] [int] NOT NULL,
[UNRLLOSS] [int] NOT NULL,
[OFFINDX] [int] NOT NULL,
[REC_ACCT_IDX] [int] NOT NULL,
[INT_INCOME_ACCT_IDX] [int] NOT NULL,
[REC_OFFSET_ACCT_IDX] [int] NOT NULL,
[PAY_ACCT_IDX] [int] NOT NULL,
[PAY_OFFSET_ACCT_IDX] [int] NOT NULL,
[INT_EXP_ACCT_IDX] [int] NOT NULL,
[BSSI_IntrIncAccrAcctIdx] [int] NOT NULL,
[BSSI_IntrExpAccrAcctIdx] [int] NOT NULL,
[BSSI_AccrdIntrIncAcctIdx] [int] NOT NULL,
[BSSI_AccrdIntrExpAcctIdx] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1),
[BSSI_Email_Body] [text] COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510210] ADD CONSTRAINT [PKB0510210] PRIMARY KEY CLUSTERED  ([MJW_Setup_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[MJW_Setup_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[MJW_Distribution_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_DistributionNextNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[MJW_Investment_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_InvestmentNextNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[MJW_Redemption_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[MJW_Redemption_Next_Numb]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[MJW_Redemption_NumLength]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[MJW_Transfer_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_TransferNextNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[MJW_Distribution_Code1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_CertificateNextNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[MJW_Investor_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_InvestorNextNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[MJW_Offering_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_OfferingNextNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[MJW_Broker_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_BrokerNextNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[IMS_Certificate_AutoNumb]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[SGMTNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[BSSI_Distribution_Prorat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[BSSI_Trust_Label_CB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[BSSI_Tax_Labels_System]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_Capital_Call_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_CapitalCallNextNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_Fund_Owner_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_FundOwnerNextNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[BSSI_CommPaymentMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[BSSI_Commission_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_Email_Subject]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_PDF_PathName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_InvestCategoryID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510210].[BSSI_InvestmentType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[BSSI_AccrualsAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[REALGAIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[REALLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[UNRLGAIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[UNRLLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[OFFINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[REC_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[INT_INCOME_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[REC_OFFSET_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[PAY_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[PAY_OFFSET_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[INT_EXP_ACCT_IDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[BSSI_IntrIncAccrAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[BSSI_IntrExpAccrAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[BSSI_AccrdIntrIncAcctIdx]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0510210].[BSSI_AccrdIntrExpAcctIdx]'
GO
GRANT SELECT ON  [dbo].[B0510210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510210] TO [DYNGRP]
GO
