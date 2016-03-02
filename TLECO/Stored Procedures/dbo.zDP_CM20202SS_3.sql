SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM20202SS_3] (@CHEKBKID char(15), @EFTType smallint, @SERIES smallint, @DOCNUMBR char(21)) AS  set nocount on SELECT TOP 1  DOCNUMBR, SERIES, EFTType, EFTFileFormat, TRXDATE, Checkbook_Amount, CURNCYID, ISOCURRC, BACHNUMB, BCHSOURC, BCHCOMNT, paidtorcvdfrom, COMMENT1, SOURCDOC, VOIDDATE, AUDITTRAIL, ExecDate, RefNum, CHEKBKID, EFTBankTypeCB, EFTBankAcctCB, EFTBankBranchCB, EFTBankCodeCB, EFTBankBranchCodeCB, EFTBankCheckDigitCB, IntlBankAcctNum, TXRGNNUM, USERDEF1, USERDEF2, CustomerVendor_ID, ADRSCODE, EFTBankType, EFTBankAcct, EFTBankBranch, EFTBankCode, EFTBankBranchCode, EFTBankCheckDigit, CustVendIBAN, SWIFTADDR, CustVendCountryCode, DeliveryCountryCode, BNKCTRCD, CBANKCD, GIROPostType, RegCode1, RegCode2, BankInfo1, BankInfo2, BankInfo3, BankInfo4, BankInfo5, BankInfo6, BankInfo7, FedResBankNum, FedResClient, FedResBranch, DEX_ROW_ID FROM .CM20202 WHERE CHEKBKID = @CHEKBKID AND EFTType = @EFTType AND SERIES = @SERIES AND DOCNUMBR = @DOCNUMBR ORDER BY CHEKBKID ASC, EFTType ASC, SERIES ASC, DOCNUMBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM20202SS_3] TO [DYNGRP]
GO
