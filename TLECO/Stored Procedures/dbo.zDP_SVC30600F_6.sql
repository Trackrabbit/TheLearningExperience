SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC30600F_6] (@CONTNBR_RS char(11), @CONSTS_RS smallint, @SVC_Contract_Version_RS smallint, @CONTNBR_RE char(11), @CONSTS_RE smallint, @SVC_Contract_Version_RE smallint) AS  set nocount on IF @CONTNBR_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, Contract_Transfer_Status, Contract_Transfer_Date, TAXSCHID, priorityLevel, ADRSCODE, NOTEINDX, TIMEZONE, CONTPRC, RENCNTTYP, RENPRCSCHD, PCTCRYFWD, FRZEND, FRXSTRT, MXINCPCT, BLKTIM, VALTIM, DSCPCTAM, COMDLRAM, COUNTRY, PRCSTAT, PORDNMBR, DSCRIPTN, PARTPCT, LABPCT, MISCPCT, PMMSCPCT, PMPRTPCT, PMLABPCT, VENDORID, RETNAGAM, RTNBILLD, SLPRSNID, COMMCODE, COMPRCNT, BILSTRT, BILEND, BILLNGTH, BILPRD, TOTAL, FRSTBLDTE, Last_Amount_Billed, LSTBLDTE, NBRCAL, ACTCAL, TOTVALCAL, CONTACT, CURNCYID, NXTBLDTE, CNTTYPE, PRICSHED, CUSTNMBR, ENTDTE, MINBIL, MAXBIL, MAXBILL, AUTOREN, MSTCNTRCT, SRVTYPE, BILFRRET, TOTBIL, PREPAID, BILONDY, BILCYC, UOFM, BILSTAT, ENTTME, STRTDATE, ENDDATE, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, Contract_Length, Contract_Period, Invoiced_Amount, Liabiltiy_Reduction, Amount_To_Invoice, Liability_Amount, Total_Liability_Amount, NUMOFINV, Quote_Status, QUOEXPDA, Credit_Hold, TAXEXMT1, TAXEXMT2, New_PO_Required, Contract_Renewal_Contact, Source_Contract_Number, Source_Contract_Type, Contract_Response_Time, Liability_Months, Next_Liability_Date, Last_Liability_Date, Total_Liability_Billed, Total_Unit, Created_User_ID, Source_User_ID, SVC_Contract_Signed, SVC_Liability_Type, RETTYPE, Location_Segment, Bill_To_Customer, SVC_Invoice_Detail, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, SVC_Bill_To_Address_Code, DSCDLRAM, SVC_Paid_Contract, SVC_Discount_Recognized, SVC_Discount_Remaining, SVC_Discount_Next, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGVALTIM, ORCOMAMT, ORIGRETNAGAM, ORIGRTNBILLD, ORIGTOTAL, ORIGLASTAmountBilled, ORIGTOTVALCAL, ORIGMINBIL, ORIGMAXBIL, Originating_Max_Billable, ORIGTOTBIL, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, Orig_Liability_Amount, OrigTotLiabilityAmount, OrigTotLiabBilled, Originating_Total_Unit, ORDDLRAT, OrigDiscountReceived, OrigDiscountRemaining, OrigDiscountNext, SmoothInvoiceCalc, SmoothRevenueCalc, SVC_Use_Same_Number, SVC_FO_ID, SVC_Invoiced_Cost, Orig_SVC_Invoiced_Cost, SVC_Contract_Version, SVC_Evergreen_Contract, SVC_Evergreen_RenewLimit, SVC_Evergreen_Renewals, SVC_New_Contract_Number, SVC_New_PO_Number, Workflow_Approval_Status, Workflow_Priority, svcBillingFrequency, svcFrequencyQty, DEX_ROW_ID FROM .SVC30600 ORDER BY CONTNBR ASC, CONSTS ASC, SVC_Contract_Version ASC END ELSE IF @CONTNBR_RS = @CONTNBR_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, Contract_Transfer_Status, Contract_Transfer_Date, TAXSCHID, priorityLevel, ADRSCODE, NOTEINDX, TIMEZONE, CONTPRC, RENCNTTYP, RENPRCSCHD, PCTCRYFWD, FRZEND, FRXSTRT, MXINCPCT, BLKTIM, VALTIM, DSCPCTAM, COMDLRAM, COUNTRY, PRCSTAT, PORDNMBR, DSCRIPTN, PARTPCT, LABPCT, MISCPCT, PMMSCPCT, PMPRTPCT, PMLABPCT, VENDORID, RETNAGAM, RTNBILLD, SLPRSNID, COMMCODE, COMPRCNT, BILSTRT, BILEND, BILLNGTH, BILPRD, TOTAL, FRSTBLDTE, Last_Amount_Billed, LSTBLDTE, NBRCAL, ACTCAL, TOTVALCAL, CONTACT, CURNCYID, NXTBLDTE, CNTTYPE, PRICSHED, CUSTNMBR, ENTDTE, MINBIL, MAXBIL, MAXBILL, AUTOREN, MSTCNTRCT, SRVTYPE, BILFRRET, TOTBIL, PREPAID, BILONDY, BILCYC, UOFM, BILSTAT, ENTTME, STRTDATE, ENDDATE, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, Contract_Length, Contract_Period, Invoiced_Amount, Liabiltiy_Reduction, Amount_To_Invoice, Liability_Amount, Total_Liability_Amount, NUMOFINV, Quote_Status, QUOEXPDA, Credit_Hold, TAXEXMT1, TAXEXMT2, New_PO_Required, Contract_Renewal_Contact, Source_Contract_Number, Source_Contract_Type, Contract_Response_Time, Liability_Months, Next_Liability_Date, Last_Liability_Date, Total_Liability_Billed, Total_Unit, Created_User_ID, Source_User_ID, SVC_Contract_Signed, SVC_Liability_Type, RETTYPE, Location_Segment, Bill_To_Customer, SVC_Invoice_Detail, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, SVC_Bill_To_Address_Code, DSCDLRAM, SVC_Paid_Contract, SVC_Discount_Recognized, SVC_Discount_Remaining, SVC_Discount_Next, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGVALTIM, ORCOMAMT, ORIGRETNAGAM, ORIGRTNBILLD, ORIGTOTAL, ORIGLASTAmountBilled, ORIGTOTVALCAL, ORIGMINBIL, ORIGMAXBIL, Originating_Max_Billable, ORIGTOTBIL, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, Orig_Liability_Amount, OrigTotLiabilityAmount, OrigTotLiabBilled, Originating_Total_Unit, ORDDLRAT, OrigDiscountReceived, OrigDiscountRemaining, OrigDiscountNext, SmoothInvoiceCalc, SmoothRevenueCalc, SVC_Use_Same_Number, SVC_FO_ID, SVC_Invoiced_Cost, Orig_SVC_Invoiced_Cost, SVC_Contract_Version, SVC_Evergreen_Contract, SVC_Evergreen_RenewLimit, SVC_Evergreen_Renewals, SVC_New_Contract_Number, SVC_New_PO_Number, Workflow_Approval_Status, Workflow_Priority, svcBillingFrequency, svcFrequencyQty, DEX_ROW_ID FROM .SVC30600 WHERE CONTNBR = @CONTNBR_RS AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND SVC_Contract_Version BETWEEN @SVC_Contract_Version_RS AND @SVC_Contract_Version_RE ORDER BY CONTNBR ASC, CONSTS ASC, SVC_Contract_Version ASC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, Contract_Transfer_Status, Contract_Transfer_Date, TAXSCHID, priorityLevel, ADRSCODE, NOTEINDX, TIMEZONE, CONTPRC, RENCNTTYP, RENPRCSCHD, PCTCRYFWD, FRZEND, FRXSTRT, MXINCPCT, BLKTIM, VALTIM, DSCPCTAM, COMDLRAM, COUNTRY, PRCSTAT, PORDNMBR, DSCRIPTN, PARTPCT, LABPCT, MISCPCT, PMMSCPCT, PMPRTPCT, PMLABPCT, VENDORID, RETNAGAM, RTNBILLD, SLPRSNID, COMMCODE, COMPRCNT, BILSTRT, BILEND, BILLNGTH, BILPRD, TOTAL, FRSTBLDTE, Last_Amount_Billed, LSTBLDTE, NBRCAL, ACTCAL, TOTVALCAL, CONTACT, CURNCYID, NXTBLDTE, CNTTYPE, PRICSHED, CUSTNMBR, ENTDTE, MINBIL, MAXBIL, MAXBILL, AUTOREN, MSTCNTRCT, SRVTYPE, BILFRRET, TOTBIL, PREPAID, BILONDY, BILCYC, UOFM, BILSTAT, ENTTME, STRTDATE, ENDDATE, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, Contract_Length, Contract_Period, Invoiced_Amount, Liabiltiy_Reduction, Amount_To_Invoice, Liability_Amount, Total_Liability_Amount, NUMOFINV, Quote_Status, QUOEXPDA, Credit_Hold, TAXEXMT1, TAXEXMT2, New_PO_Required, Contract_Renewal_Contact, Source_Contract_Number, Source_Contract_Type, Contract_Response_Time, Liability_Months, Next_Liability_Date, Last_Liability_Date, Total_Liability_Billed, Total_Unit, Created_User_ID, Source_User_ID, SVC_Contract_Signed, SVC_Liability_Type, RETTYPE, Location_Segment, Bill_To_Customer, SVC_Invoice_Detail, USERDEF1, USERDEF2, USRDEF03, USRDEF04, USRDEF05, SVC_Bill_To_Address_Code, DSCDLRAM, SVC_Paid_Contract, SVC_Discount_Recognized, SVC_Discount_Remaining, SVC_Discount_Next, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGVALTIM, ORCOMAMT, ORIGRETNAGAM, ORIGRTNBILLD, ORIGTOTAL, ORIGLASTAmountBilled, ORIGTOTVALCAL, ORIGMINBIL, ORIGMAXBIL, Originating_Max_Billable, ORIGTOTBIL, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, Orig_Liability_Amount, OrigTotLiabilityAmount, OrigTotLiabBilled, Originating_Total_Unit, ORDDLRAT, OrigDiscountReceived, OrigDiscountRemaining, OrigDiscountNext, SmoothInvoiceCalc, SmoothRevenueCalc, SVC_Use_Same_Number, SVC_FO_ID, SVC_Invoiced_Cost, Orig_SVC_Invoiced_Cost, SVC_Contract_Version, SVC_Evergreen_Contract, SVC_Evergreen_RenewLimit, SVC_Evergreen_Renewals, SVC_New_Contract_Number, SVC_New_PO_Number, Workflow_Approval_Status, Workflow_Priority, svcBillingFrequency, svcFrequencyQty, DEX_ROW_ID FROM .SVC30600 WHERE CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND SVC_Contract_Version BETWEEN @SVC_Contract_Version_RS AND @SVC_Contract_Version_RE ORDER BY CONTNBR ASC, CONSTS ASC, SVC_Contract_Version ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC30600F_6] TO [DYNGRP]
GO
