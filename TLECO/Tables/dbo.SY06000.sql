CREATE TABLE [dbo].[SY06000]
(
[SERIES] [smallint] NOT NULL,
[CustomerVendor_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTUseMasterID] [smallint] NOT NULL,
[EFTBankType] [smallint] NOT NULL,
[FRGNBANK] [tinyint] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[BANKNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankAcct] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankBranch] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GIROPostType] [smallint] NOT NULL,
[EFTBankCode] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankBranchCode] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankCheckDigit] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSROLLNO] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IntlBankAcctNum] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SWIFTADDR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustVendCountryCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DeliveryCountryCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BNKCTRCD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CBANKCD] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS4] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RegCode1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RegCode2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BankInfo7] [smallint] NOT NULL,
[EFTTransitRoutingNo] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTTransferMethod] [smallint] NOT NULL,
[EFTAccountType] [smallint] NOT NULL,
[EFTPrenoteDate] [datetime] NOT NULL,
[EFTTerminationDate] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY06000] ADD CONSTRAINT [CK__SY06000__EFTPren__768C7B8D] CHECK ((datepart(hour,[EFTPrenoteDate])=(0) AND datepart(minute,[EFTPrenoteDate])=(0) AND datepart(second,[EFTPrenoteDate])=(0) AND datepart(millisecond,[EFTPrenoteDate])=(0)))
GO
ALTER TABLE [dbo].[SY06000] ADD CONSTRAINT [CK__SY06000__EFTTerm__77809FC6] CHECK ((datepart(hour,[EFTTerminationDate])=(0) AND datepart(minute,[EFTTerminationDate])=(0) AND datepart(second,[EFTTerminationDate])=(0) AND datepart(millisecond,[EFTTerminationDate])=(0)))
GO
ALTER TABLE [dbo].[SY06000] ADD CONSTRAINT [PKSY06000] PRIMARY KEY NONCLUSTERED  ([CustomerVendor_ID], [ADRSCODE], [SERIES]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY06000] ON [dbo].[SY06000] ([CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY06000] ON [dbo].[SY06000] ([VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY06000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[CustomerVendor_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY06000].[EFTUseMasterID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY06000].[EFTBankType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY06000].[FRGNBANK]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY06000].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[BANKNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[EFTBankAcct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[EFTBankBranch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY06000].[GIROPostType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[EFTBankCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[EFTBankBranchCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[EFTBankCheckDigit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[BSROLLNO]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[IntlBankAcctNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[SWIFTADDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[CustVendCountryCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[DeliveryCountryCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[BNKCTRCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[CBANKCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[ADDRESS4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[RegCode1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[RegCode2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY06000].[BankInfo7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[EFTTransitRoutingNo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY06000].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY06000].[EFTTransferMethod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY06000].[EFTAccountType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY06000].[EFTPrenoteDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY06000].[EFTTerminationDate]'
GO
GRANT SELECT ON  [dbo].[SY06000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY06000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY06000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY06000] TO [DYNGRP]
GO
