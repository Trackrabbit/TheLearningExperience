SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00101SS_1] (@CHEKBKID char(15)) AS  set nocount on SELECT TOP 1  CHEKBKID, EFTBankType, AcctHolder, EFTBankAcct, EFTBankBranch, EFTBankCode, EFTBankBranchCode, EFTBankCheckDigit, IntlBankAcctNum, TXRGNNUM, DomPmtsFile, ForeignPmtsFile, DomDirDbtCollectFile, DomDirDbtRefundFile, BankIDNum, BankInfo1, BankInfo2, BankInfo3, BankInfo4, BankInfo5, BankInfo6, FedResBankNum, FedResClient, FedResBranch, EFTTransitRoutingNo, EFTPreTransitDigit, EFTPriorityCode, EFTBlockingFactor, EFTFormatCode, EFTReference, EFTCompanyID, EFTBankCoName, EFTSmallCoName, EFTServiceClassCode, EFTCommunicationType, EFTCommunicationFile, EFTUseOriginatingCur, CCode, ISOCURRC, EFTDataCentreCode, EFTNextFileNo, EFTPMServClassAll, EFTPMServClassBus, EFTPMServClassCorp, EFTPMServClassForeign, EFTPMServClassPersonal, EFTPMNextNumber, EFTPMPrenoteRequired, EFTPMPrenoteGracePeriod, EFTPMPrenoteFile, EFTPMReconcile, EFTPMTrxNumbers, EFTRMBankFormat, EFTRMServClassAll, EFTRMServClassBus, EFTRMServiceClassCorp, EFTRMServClassForeign, EFTRMServClassPersonal, EFTRMNextNumber, EFTRMPrenoteRequired, EFTRMPrenoteGracePeriod, EFTRMPrenoteFile, EFTRMReconcile, RMUSEEFTNUM, EFTRMPostBankRecSummary, EFTPMPostBankRecSummary, DEX_ROW_ID FROM .CM00101 WHERE CHEKBKID = @CHEKBKID ORDER BY CHEKBKID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00101SS_1] TO [DYNGRP]
GO
