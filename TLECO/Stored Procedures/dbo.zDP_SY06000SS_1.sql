SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY06000SS_1] (@CustomerVendor_ID char(15), @ADRSCODE char(15), @SERIES smallint) AS  set nocount on SELECT TOP 1  SERIES, CustomerVendor_ID, ADRSCODE, VENDORID, CUSTNMBR, EFTUseMasterID, EFTBankType, FRGNBANK, INACTIVE, BANKNAME, EFTBankAcct, EFTBankBranch, GIROPostType, EFTBankCode, EFTBankBranchCode, EFTBankCheckDigit, BSROLLNO, IntlBankAcctNum, SWIFTADDR, CustVendCountryCode, DeliveryCountryCode, BNKCTRCD, CBANKCD, ADDRESS1, ADDRESS2, ADDRESS3, ADDRESS4, RegCode1, RegCode2, BankInfo7, EFTTransitRoutingNo, CURNCYID, EFTTransferMethod, EFTAccountType, EFTPrenoteDate, EFTTerminationDate, DEX_ROW_ID FROM .SY06000 WHERE CustomerVendor_ID = @CustomerVendor_ID AND ADRSCODE = @ADRSCODE AND SERIES = @SERIES ORDER BY CustomerVendor_ID ASC, ADRSCODE ASC, SERIES ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY06000SS_1] TO [DYNGRP]
GO
