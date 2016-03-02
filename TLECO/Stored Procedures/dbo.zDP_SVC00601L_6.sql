SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00601L_6] (@CONSTS_RS smallint, @CONTNBR_RS char(11), @NXTBLDTE_RS datetime, @LNSEQNBR_RS numeric(19,5), @CONSTS_RE smallint, @CONTNBR_RE char(11), @NXTBLDTE_RE datetime, @LNSEQNBR_RE numeric(19,5)) AS  set nocount on IF @CONSTS_RS IS NULL BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, Contract_Transfer_Status, Contract_Transfer_Date, CNTPRCOVR, NOTEINDX, ADRSCODE, QUANTITY, ITEMNMBR, CONFGREF, EQUIPID, SERLNMBR, FRZEND, FRXSTRT, BLKTIM, VALTIM, DSCPCTAM, COMDLRAM, COUNTRY, PRCSTAT, PORDNMBR, DSCRIPTN, PARTPCT, LABPCT, MISCPCT, PMMSCPCT, PMPRTPCT, PMLABPCT, VENDORID, RETNAGAM, RTNBILLD, SLPRSNID, COMMCODE, COMPRCNT, BILSTRT, BILEND, BILLNGTH, BILPRD, FRSTBLDTE, Last_Amount_Billed, LSTBLDTE, NBRCAL, TOTAL, ACTCAL, TOTVALCAL, CONTACT, CURNCYID, NXTBLDTE, CNTTYPE, PRICSHED, CUSTNMBR, ENTDTE, MINBIL, MAXBIL, MAXBILL, AUTOREN, priorityLevel, MSTCNTRCT, SRVTYPE, BILFRRET, TOTBIL, PREPAID, BILONDY, BILCYC, UOFM, BILSTAT, ENTTME, STRTDATE, ENDDATE, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, TAXSCHID, CNFGLVL, CNFGSEQ, Contract_Length, Contract_Period, Invoiced_Amount, Amount_To_Invoice, Liabiltiy_Reduction, Liability_Amount, Total_Liability_Amount, NUMOFINV, New_Invoice_Amount, Contract_Line_Status, Contract_Renewal_Contact, Contract_Response_Time, Liability_Months, Next_Liability_Date, Last_Liability_Date, Total_Liability_Billed, TAXEXMT1, TAXEXMT2, Total_Unit, UNITCOST, Unit_Cost_Total, SVC_Liability_Type, SVC_Contract_Signed, RETTYPE, SVC_Monthly_Price, Location_Segment, Bill_To_Customer, SVC_Bill_To_Address_Code, DSCDLRAM, SVC_Invoiced_Discount, SVC_Discount_Recognized, SVC_Discount_Remaining, SVC_Discount_Next, SVC_PM_Date, SVC_PM_Day, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGVALTIM, ORCOMAMT, ORIGRETNAGAM, ORIGRTNBILLD, ORIGLASTAmountBilled, ORIGTOTAL, ORIGTOTVALCAL, ORIGMINBIL, ORIGMAXBIL, Originating_Max_Billable, ORIGTOTBIL, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, Orig_Liability_Amount, OrigTotLiabilityAmount, OrigTotLiabBilled, Originating_Total_Unit, ORUNTCST, ORDDLRAT, OrigDiscountReceived, OrigDiscountRemaining, OrigDiscountNext, ORIGUNITCOSTTOTAL, ORIGMONTHPRICE, ORIGINVOICEDDISC, OrigNewInvoiceAmount, TAXAMNT, ORTAXAMT, SVC_FO_ID, MovedRevenue, OriginalTotal, OrigMovedRevenue, OrigOriginalTotal, Credit_Hold, ITEMDESC, DEX_ROW_ID FROM .SVC00601 ORDER BY CONSTS DESC, CONTNBR DESC, NXTBLDTE DESC, LNSEQNBR DESC END ELSE IF @CONSTS_RS = @CONSTS_RE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, Contract_Transfer_Status, Contract_Transfer_Date, CNTPRCOVR, NOTEINDX, ADRSCODE, QUANTITY, ITEMNMBR, CONFGREF, EQUIPID, SERLNMBR, FRZEND, FRXSTRT, BLKTIM, VALTIM, DSCPCTAM, COMDLRAM, COUNTRY, PRCSTAT, PORDNMBR, DSCRIPTN, PARTPCT, LABPCT, MISCPCT, PMMSCPCT, PMPRTPCT, PMLABPCT, VENDORID, RETNAGAM, RTNBILLD, SLPRSNID, COMMCODE, COMPRCNT, BILSTRT, BILEND, BILLNGTH, BILPRD, FRSTBLDTE, Last_Amount_Billed, LSTBLDTE, NBRCAL, TOTAL, ACTCAL, TOTVALCAL, CONTACT, CURNCYID, NXTBLDTE, CNTTYPE, PRICSHED, CUSTNMBR, ENTDTE, MINBIL, MAXBIL, MAXBILL, AUTOREN, priorityLevel, MSTCNTRCT, SRVTYPE, BILFRRET, TOTBIL, PREPAID, BILONDY, BILCYC, UOFM, BILSTAT, ENTTME, STRTDATE, ENDDATE, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, TAXSCHID, CNFGLVL, CNFGSEQ, Contract_Length, Contract_Period, Invoiced_Amount, Amount_To_Invoice, Liabiltiy_Reduction, Liability_Amount, Total_Liability_Amount, NUMOFINV, New_Invoice_Amount, Contract_Line_Status, Contract_Renewal_Contact, Contract_Response_Time, Liability_Months, Next_Liability_Date, Last_Liability_Date, Total_Liability_Billed, TAXEXMT1, TAXEXMT2, Total_Unit, UNITCOST, Unit_Cost_Total, SVC_Liability_Type, SVC_Contract_Signed, RETTYPE, SVC_Monthly_Price, Location_Segment, Bill_To_Customer, SVC_Bill_To_Address_Code, DSCDLRAM, SVC_Invoiced_Discount, SVC_Discount_Recognized, SVC_Discount_Remaining, SVC_Discount_Next, SVC_PM_Date, SVC_PM_Day, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGVALTIM, ORCOMAMT, ORIGRETNAGAM, ORIGRTNBILLD, ORIGLASTAmountBilled, ORIGTOTAL, ORIGTOTVALCAL, ORIGMINBIL, ORIGMAXBIL, Originating_Max_Billable, ORIGTOTBIL, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, Orig_Liability_Amount, OrigTotLiabilityAmount, OrigTotLiabBilled, Originating_Total_Unit, ORUNTCST, ORDDLRAT, OrigDiscountReceived, OrigDiscountRemaining, OrigDiscountNext, ORIGUNITCOSTTOTAL, ORIGMONTHPRICE, ORIGINVOICEDDISC, OrigNewInvoiceAmount, TAXAMNT, ORTAXAMT, SVC_FO_ID, MovedRevenue, OriginalTotal, OrigMovedRevenue, OrigOriginalTotal, Credit_Hold, ITEMDESC, DEX_ROW_ID FROM .SVC00601 WHERE CONSTS = @CONSTS_RS AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND NXTBLDTE BETWEEN @NXTBLDTE_RS AND @NXTBLDTE_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY CONSTS DESC, CONTNBR DESC, NXTBLDTE DESC, LNSEQNBR DESC END ELSE BEGIN SELECT TOP 25  CONSTS, CONTNBR, LNSEQNBR, Contract_Transfer_Status, Contract_Transfer_Date, CNTPRCOVR, NOTEINDX, ADRSCODE, QUANTITY, ITEMNMBR, CONFGREF, EQUIPID, SERLNMBR, FRZEND, FRXSTRT, BLKTIM, VALTIM, DSCPCTAM, COMDLRAM, COUNTRY, PRCSTAT, PORDNMBR, DSCRIPTN, PARTPCT, LABPCT, MISCPCT, PMMSCPCT, PMPRTPCT, PMLABPCT, VENDORID, RETNAGAM, RTNBILLD, SLPRSNID, COMMCODE, COMPRCNT, BILSTRT, BILEND, BILLNGTH, BILPRD, FRSTBLDTE, Last_Amount_Billed, LSTBLDTE, NBRCAL, TOTAL, ACTCAL, TOTVALCAL, CONTACT, CURNCYID, NXTBLDTE, CNTTYPE, PRICSHED, CUSTNMBR, ENTDTE, MINBIL, MAXBIL, MAXBILL, AUTOREN, priorityLevel, MSTCNTRCT, SRVTYPE, BILFRRET, TOTBIL, PREPAID, BILONDY, BILCYC, UOFM, BILSTAT, ENTTME, STRTDATE, ENDDATE, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, TAXSCHID, CNFGLVL, CNFGSEQ, Contract_Length, Contract_Period, Invoiced_Amount, Amount_To_Invoice, Liabiltiy_Reduction, Liability_Amount, Total_Liability_Amount, NUMOFINV, New_Invoice_Amount, Contract_Line_Status, Contract_Renewal_Contact, Contract_Response_Time, Liability_Months, Next_Liability_Date, Last_Liability_Date, Total_Liability_Billed, TAXEXMT1, TAXEXMT2, Total_Unit, UNITCOST, Unit_Cost_Total, SVC_Liability_Type, SVC_Contract_Signed, RETTYPE, SVC_Monthly_Price, Location_Segment, Bill_To_Customer, SVC_Bill_To_Address_Code, DSCDLRAM, SVC_Invoiced_Discount, SVC_Discount_Recognized, SVC_Discount_Remaining, SVC_Discount_Next, SVC_PM_Date, SVC_PM_Day, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGVALTIM, ORCOMAMT, ORIGRETNAGAM, ORIGRTNBILLD, ORIGLASTAmountBilled, ORIGTOTAL, ORIGTOTVALCAL, ORIGMINBIL, ORIGMAXBIL, Originating_Max_Billable, ORIGTOTBIL, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, Orig_Liability_Amount, OrigTotLiabilityAmount, OrigTotLiabBilled, Originating_Total_Unit, ORUNTCST, ORDDLRAT, OrigDiscountReceived, OrigDiscountRemaining, OrigDiscountNext, ORIGUNITCOSTTOTAL, ORIGMONTHPRICE, ORIGINVOICEDDISC, OrigNewInvoiceAmount, TAXAMNT, ORTAXAMT, SVC_FO_ID, MovedRevenue, OriginalTotal, OrigMovedRevenue, OrigOriginalTotal, Credit_Hold, ITEMDESC, DEX_ROW_ID FROM .SVC00601 WHERE CONSTS BETWEEN @CONSTS_RS AND @CONSTS_RE AND CONTNBR BETWEEN @CONTNBR_RS AND @CONTNBR_RE AND NXTBLDTE BETWEEN @NXTBLDTE_RS AND @NXTBLDTE_RE AND LNSEQNBR BETWEEN @LNSEQNBR_RS AND @LNSEQNBR_RE ORDER BY CONSTS DESC, CONTNBR DESC, NXTBLDTE DESC, LNSEQNBR DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00601L_6] TO [DYNGRP]
GO
