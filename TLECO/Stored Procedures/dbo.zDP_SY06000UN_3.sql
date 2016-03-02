SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SY06000UN_3] (@BS int, @VENDORID char(15), @VENDORID_RS char(15), @VENDORID_RE char(15)) AS  set nocount on IF @VENDORID_RS IS NULL BEGIN SELECT TOP 25  SERIES, CustomerVendor_ID, ADRSCODE, VENDORID, CUSTNMBR, EFTUseMasterID, EFTBankType, FRGNBANK, INACTIVE, BANKNAME, EFTBankAcct, EFTBankBranch, GIROPostType, EFTBankCode, EFTBankBranchCode, EFTBankCheckDigit, BSROLLNO, IntlBankAcctNum, SWIFTADDR, CustVendCountryCode, DeliveryCountryCode, BNKCTRCD, CBANKCD, ADDRESS1, ADDRESS2, ADDRESS3, ADDRESS4, RegCode1, RegCode2, BankInfo7, EFTTransitRoutingNo, CURNCYID, EFTTransferMethod, EFTAccountType, EFTPrenoteDate, EFTTerminationDate, DEX_ROW_ID FROM .SY06000 WHERE ( VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DEX_ROW_ID ASC END ELSE IF @VENDORID_RS = @VENDORID_RE BEGIN SELECT TOP 25  SERIES, CustomerVendor_ID, ADRSCODE, VENDORID, CUSTNMBR, EFTUseMasterID, EFTBankType, FRGNBANK, INACTIVE, BANKNAME, EFTBankAcct, EFTBankBranch, GIROPostType, EFTBankCode, EFTBankBranchCode, EFTBankCheckDigit, BSROLLNO, IntlBankAcctNum, SWIFTADDR, CustVendCountryCode, DeliveryCountryCode, BNKCTRCD, CBANKCD, ADDRESS1, ADDRESS2, ADDRESS3, ADDRESS4, RegCode1, RegCode2, BankInfo7, EFTTransitRoutingNo, CURNCYID, EFTTransferMethod, EFTAccountType, EFTPrenoteDate, EFTTerminationDate, DEX_ROW_ID FROM .SY06000 WHERE VENDORID = @VENDORID_RS AND ( VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DEX_ROW_ID ASC END ELSE BEGIN SELECT TOP 25  SERIES, CustomerVendor_ID, ADRSCODE, VENDORID, CUSTNMBR, EFTUseMasterID, EFTBankType, FRGNBANK, INACTIVE, BANKNAME, EFTBankAcct, EFTBankBranch, GIROPostType, EFTBankCode, EFTBankBranchCode, EFTBankCheckDigit, BSROLLNO, IntlBankAcctNum, SWIFTADDR, CustVendCountryCode, DeliveryCountryCode, BNKCTRCD, CBANKCD, ADDRESS1, ADDRESS2, ADDRESS3, ADDRESS4, RegCode1, RegCode2, BankInfo7, EFTTransitRoutingNo, CURNCYID, EFTTransferMethod, EFTAccountType, EFTPrenoteDate, EFTTerminationDate, DEX_ROW_ID FROM .SY06000 WHERE VENDORID BETWEEN @VENDORID_RS AND @VENDORID_RE AND ( VENDORID > @VENDORID ) ORDER BY VENDORID ASC, DEX_ROW_ID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SY06000UN_3] TO [DYNGRP]
GO