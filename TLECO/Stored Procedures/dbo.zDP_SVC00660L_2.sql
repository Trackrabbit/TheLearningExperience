SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00660L_2] (@CUSTNMBR_RS char(15), @ADRSCODE_RS char(15), @CUSTNMBR_RE char(15), @ADRSCODE_RE char(15)) AS  set nocount on IF @CUSTNMBR_RS IS NULL BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, CUSTNMBR, CUSTNAME, ADRSCODE, CNTTYPE, Contract_Length, Contract_Period, STRTDATE, ENDDATE, PREPAID, PRICSHED, BILLNGTH, BILPRD, BILSTRT, BILEND, BILONDY, BILCYC, SVC_Liability_Type, Bill_To_Customer, SVC_Bill_To_Address_Code, PORDNMBR, SVC_Invoice_Detail, PARTPCT, LABPCT, MISCPCT, PMPRTPCT, PMLABPCT, PMMSCPCT, SVC_Paid_Contract, DSCPCTAM, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, DENXRATE, MCTRXSTT, svcBillingFrequency, svcFrequencyQty, DEX_ROW_ID FROM .SVC00660 ORDER BY CUSTNMBR DESC, ADRSCODE DESC, DEX_ROW_ID DESC END ELSE IF @CUSTNMBR_RS = @CUSTNMBR_RE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, CUSTNMBR, CUSTNAME, ADRSCODE, CNTTYPE, Contract_Length, Contract_Period, STRTDATE, ENDDATE, PREPAID, PRICSHED, BILLNGTH, BILPRD, BILSTRT, BILEND, BILONDY, BILCYC, SVC_Liability_Type, Bill_To_Customer, SVC_Bill_To_Address_Code, PORDNMBR, SVC_Invoice_Detail, PARTPCT, LABPCT, MISCPCT, PMPRTPCT, PMLABPCT, PMMSCPCT, SVC_Paid_Contract, DSCPCTAM, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, DENXRATE, MCTRXSTT, svcBillingFrequency, svcFrequencyQty, DEX_ROW_ID FROM .SVC00660 WHERE CUSTNMBR = @CUSTNMBR_RS AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY CUSTNMBR DESC, ADRSCODE DESC, DEX_ROW_ID DESC END ELSE BEGIN SELECT TOP 25  SOPTYPE, SOPNUMBE, CUSTNMBR, CUSTNAME, ADRSCODE, CNTTYPE, Contract_Length, Contract_Period, STRTDATE, ENDDATE, PREPAID, PRICSHED, BILLNGTH, BILPRD, BILSTRT, BILEND, BILONDY, BILCYC, SVC_Liability_Type, Bill_To_Customer, SVC_Bill_To_Address_Code, PORDNMBR, SVC_Invoice_Detail, PARTPCT, LABPCT, MISCPCT, PMPRTPCT, PMLABPCT, PMMSCPCT, SVC_Paid_Contract, DSCPCTAM, CURNCYID, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, TIME1, DENXRATE, MCTRXSTT, svcBillingFrequency, svcFrequencyQty, DEX_ROW_ID FROM .SVC00660 WHERE CUSTNMBR BETWEEN @CUSTNMBR_RS AND @CUSTNMBR_RE AND ADRSCODE BETWEEN @ADRSCODE_RS AND @ADRSCODE_RE ORDER BY CUSTNMBR DESC, ADRSCODE DESC, DEX_ROW_ID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00660L_2] TO [DYNGRP]
GO
