CREATE TABLE [dbo].[CM20202]
(
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERIES] [smallint] NOT NULL,
[EFTType] [smallint] NOT NULL,
[EFTFileFormat] [smallint] NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[Checkbook_Amount] [numeric] (19, 5) NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISOCURRC] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHCOMNT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[paidtorcvdfrom] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMENT1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VOIDDATE] [datetime] NOT NULL,
[AUDITTRAIL] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExecDate] [datetime] NOT NULL,
[RefNum] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankTypeCB] [smallint] NOT NULL,
[EFTBankAcctCB] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankBranchCB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankCodeCB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankBranchCodeCB] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankCheckDigitCB] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IntlBankAcctNum] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustomerVendor_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankType] [smallint] NOT NULL,
[EFTBankAcct] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankBranch] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankCode] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankBranchCode] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankCheckDigit] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustVendIBAN] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SWIFTADDR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustVendCountryCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DeliveryCountryCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNKCTRCD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBANKCD] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GIROPostType] [smallint] NOT NULL,
[RegCode1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RegCode2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BankInfo1] [smallint] NOT NULL,
[BankInfo2] [smallint] NOT NULL,
[BankInfo3] [smallint] NOT NULL,
[BankInfo4] [smallint] NOT NULL,
[BankInfo5] [smallint] NOT NULL,
[BankInfo6] [smallint] NOT NULL,
[BankInfo7] [smallint] NOT NULL,
[FedResBankNum] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FedResClient] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FedResBranch] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM20202] ADD CONSTRAINT [CK__CM20202__ExecDat__367C1819] CHECK ((datepart(hour,[ExecDate])=(0) AND datepart(minute,[ExecDate])=(0) AND datepart(second,[ExecDate])=(0) AND datepart(millisecond,[ExecDate])=(0)))
GO
ALTER TABLE [dbo].[CM20202] ADD CONSTRAINT [CK__CM20202__TRXDATE__37703C52] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20202] ADD CONSTRAINT [CK__CM20202__VOIDDAT__3864608B] CHECK ((datepart(hour,[VOIDDATE])=(0) AND datepart(minute,[VOIDDATE])=(0) AND datepart(second,[VOIDDATE])=(0) AND datepart(millisecond,[VOIDDATE])=(0)))
GO
ALTER TABLE [dbo].[CM20202] ADD CONSTRAINT [PKCM20202] PRIMARY KEY NONCLUSTERED  ([EFTType], [SERIES], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6CM20202] ON [dbo].[CM20202] ([BACHNUMB], [BCHSOURC], [CustomerVendor_ID], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5CM20202] ON [dbo].[CM20202] ([BACHNUMB], [BCHSOURC], [SERIES], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4CM20202] ON [dbo].[CM20202] ([BACHNUMB], [EFTType], [SERIES], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3CM20202] ON [dbo].[CM20202] ([CHEKBKID], [EFTType], [SERIES], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2CM20202] ON [dbo].[CM20202] ([TRXDATE], [EFTType], [SERIES], [DOCNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[EFTType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[EFTFileFormat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20202].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[CM20202].[Checkbook_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[ISOCURRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[BCHCOMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[paidtorcvdfrom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20202].[VOIDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[AUDITTRAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[CM20202].[ExecDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[RefNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[EFTBankTypeCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[EFTBankAcctCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[EFTBankBranchCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[EFTBankCodeCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[EFTBankBranchCodeCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[EFTBankCheckDigitCB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[IntlBankAcctNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[CustomerVendor_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[EFTBankType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[EFTBankAcct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[EFTBankBranch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[EFTBankCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[EFTBankBranchCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[EFTBankCheckDigit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[CustVendIBAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[SWIFTADDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[CustVendCountryCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[DeliveryCountryCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[BNKCTRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[CBANKCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[GIROPostType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[RegCode1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[RegCode2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[BankInfo1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[BankInfo2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[BankInfo3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[BankInfo4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[BankInfo5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[BankInfo6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM20202].[BankInfo7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[FedResBankNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[FedResClient]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM20202].[FedResBranch]'
GO
GRANT SELECT ON  [dbo].[CM20202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM20202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM20202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM20202] TO [DYNGRP]
GO
