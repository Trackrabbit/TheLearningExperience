CREATE TABLE [dbo].[CM00101]
(
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankType] [smallint] NOT NULL,
[AcctHolder] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankAcct] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankBranch] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankCode] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankBranchCode] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankCheckDigit] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IntlBankAcctNum] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DomPmtsFile] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ForeignPmtsFile] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DomDirDbtCollectFile] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DomDirDbtRefundFile] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BankIDNum] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BankInfo1] [smallint] NOT NULL,
[BankInfo2] [smallint] NOT NULL,
[BankInfo3] [smallint] NOT NULL,
[BankInfo4] [smallint] NOT NULL,
[BankInfo5] [smallint] NOT NULL,
[BankInfo6] [smallint] NOT NULL,
[FedResBankNum] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FedResClient] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FedResBranch] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTTransitRoutingNo] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTPreTransitDigit] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTPriorityCode] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBlockingFactor] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTFormatCode] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTReference] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTCompanyID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTBankCoName] [char] (23) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTSmallCoName] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTServiceClassCode] [smallint] NOT NULL,
[EFTCommunicationType] [smallint] NOT NULL,
[EFTCommunicationFile] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTUseOriginatingCur] [tinyint] NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ISOCURRC] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTDataCentreCode] [int] NOT NULL,
[EFTNextFileNo] [smallint] NOT NULL,
[EFTPMServClassAll] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTPMServClassBus] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTPMServClassCorp] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTPMServClassForeign] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTPMServClassPersonal] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTPMNextNumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTPMPrenoteRequired] [tinyint] NOT NULL,
[EFTPMPrenoteGracePeriod] [smallint] NOT NULL,
[EFTPMPrenoteFile] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTPMReconcile] [tinyint] NOT NULL,
[EFTPMTrxNumbers] [smallint] NOT NULL,
[EFTRMBankFormat] [smallint] NOT NULL,
[EFTRMServClassAll] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTRMServClassBus] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTRMServiceClassCorp] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTRMServClassForeign] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTRMServClassPersonal] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTRMNextNumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTRMPrenoteRequired] [tinyint] NOT NULL,
[EFTRMPrenoteGracePeriod] [smallint] NOT NULL,
[EFTRMPrenoteFile] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EFTRMReconcile] [tinyint] NOT NULL,
[RMUSEEFTNUM] [tinyint] NOT NULL,
[EFTRMPostBankRecSummary] [tinyint] NOT NULL,
[EFTPMPostBankRecSummary] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CM00101] ADD CONSTRAINT [PKCM00101] PRIMARY KEY NONCLUSTERED  ([CHEKBKID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTBankType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[AcctHolder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTBankAcct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTBankBranch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTBankCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTBankBranchCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTBankCheckDigit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[IntlBankAcctNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[DomPmtsFile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[ForeignPmtsFile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[DomDirDbtCollectFile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[DomDirDbtRefundFile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[BankIDNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[BankInfo1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[BankInfo2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[BankInfo3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[BankInfo4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[BankInfo5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[BankInfo6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[FedResBankNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[FedResClient]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[FedResBranch]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTTransitRoutingNo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTPreTransitDigit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTPriorityCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTBlockingFactor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTFormatCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTReference]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTCompanyID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTBankCoName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTSmallCoName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTServiceClassCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTCommunicationType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTCommunicationFile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTUseOriginatingCur]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[ISOCURRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTDataCentreCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTNextFileNo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTPMServClassAll]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTPMServClassBus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTPMServClassCorp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTPMServClassForeign]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTPMServClassPersonal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTPMNextNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTPMPrenoteRequired]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTPMPrenoteGracePeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTPMPrenoteFile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTPMReconcile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTPMTrxNumbers]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTRMBankFormat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTRMServClassAll]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTRMServClassBus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTRMServiceClassCorp]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTRMServClassForeign]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTRMServClassPersonal]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTRMNextNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTRMPrenoteRequired]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTRMPrenoteGracePeriod]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[CM00101].[EFTRMPrenoteFile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTRMReconcile]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[RMUSEEFTNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTRMPostBankRecSummary]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[CM00101].[EFTPMPostBankRecSummary]'
GO
GRANT SELECT ON  [dbo].[CM00101] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[CM00101] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[CM00101] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[CM00101] TO [DYNGRP]
GO
