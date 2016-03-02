SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00601SI] (@CONSTS smallint, @CONTNBR char(11), @LNSEQNBR numeric(19,5), @Contract_Transfer_Status smallint, @Contract_Transfer_Date datetime, @CNTPRCOVR tinyint, @NOTEINDX numeric(19,5), @ADRSCODE char(15), @QUANTITY numeric(19,5), @ITEMNMBR char(31), @CONFGREF char(21), @EQUIPID int, @SERLNMBR char(21), @FRZEND datetime, @FRXSTRT datetime, @BLKTIM numeric(19,5), @VALTIM numeric(19,5), @DSCPCTAM smallint, @COMDLRAM numeric(19,5), @COUNTRY char(61), @PRCSTAT char(1), @PORDNMBR char(21), @DSCRIPTN char(31), @PARTPCT numeric(19,5), @LABPCT numeric(19,5), @MISCPCT numeric(19,5), @PMMSCPCT numeric(19,5), @PMPRTPCT numeric(19,5), @PMLABPCT numeric(19,5), @VENDORID char(15), @RETNAGAM numeric(19,5), @RTNBILLD numeric(19,5), @SLPRSNID char(15), @COMMCODE char(15), @COMPRCNT smallint, @BILSTRT datetime, @BILEND datetime, @BILLNGTH smallint, @BILPRD smallint, @FRSTBLDTE datetime, @Last_Amount_Billed numeric(19,5), @LSTBLDTE datetime, @NBRCAL smallint, @TOTAL numeric(19,5), @ACTCAL smallint, @TOTVALCAL numeric(19,5), @CONTACT char(61), @CURNCYID char(15), @NXTBLDTE datetime, @CNTTYPE char(11), @PRICSHED char(11), @CUSTNMBR char(15), @ENTDTE datetime, @MINBIL numeric(19,5), @MAXBIL numeric(19,5), @MAXBILL numeric(19,5), @AUTOREN tinyint, @priorityLevel smallint, @MSTCNTRCT char(11), @SRVTYPE char(11), @BILFRRET tinyint, @TOTBIL numeric(19,5), @PREPAID tinyint, @BILONDY smallint, @BILCYC smallint, @UOFM char(9), @BILSTAT smallint, @ENTTME datetime, @STRTDATE datetime, @ENDDATE datetime, @CNTCOVPD_1 datetime, @CNTCOVPD_2 datetime, @CNTCOVPD_3 datetime, @CNTCOVPD_4 datetime, @CNTCOVPD_5 datetime, @CNTCOVPD_6 datetime, @CNTCOVPD_7 datetime, @Contract_Coverage_Period_1 datetime, @Contract_Coverage_Period_2 datetime, @Contract_Coverage_Period_3 datetime, @Contract_Coverage_Period_4 datetime, @Contract_Coverage_Period_5 datetime, @Contract_Coverage_Period_6 datetime, @Contract_Coverage_Period_7 datetime, @USECVPD_1 tinyint, @USECVPD_2 tinyint, @USECVPD_3 tinyint, @USECVPD_4 tinyint, @USECVPD_5 tinyint, @USECVPD_6 tinyint, @USECVPD_7 tinyint, @TAXSCHID char(15), @CNFGLVL smallint, @CNFGSEQ smallint, @Contract_Length smallint, @Contract_Period smallint, @Invoiced_Amount numeric(19,5), @Amount_To_Invoice numeric(19,5), @Liabiltiy_Reduction tinyint, @Liability_Amount numeric(19,5), @Total_Liability_Amount numeric(19,5), @NUMOFINV int, @New_Invoice_Amount numeric(19,5), @Contract_Line_Status char(1), @Contract_Renewal_Contact char(31), @Contract_Response_Time char(7), @Liability_Months smallint, @Next_Liability_Date datetime, @Last_Liability_Date datetime, @Total_Liability_Billed numeric(19,5), @TAXEXMT1 char(25), @TAXEXMT2 char(25), @Total_Unit numeric(19,5), @UNITCOST numeric(19,5), @Unit_Cost_Total numeric(19,5), @SVC_Liability_Type smallint, @SVC_Contract_Signed datetime, @RETTYPE char(11), @SVC_Monthly_Price numeric(19,5), @Location_Segment char(67), @Bill_To_Customer char(15), @SVC_Bill_To_Address_Code char(15), @DSCDLRAM numeric(19,5), @SVC_Invoiced_Discount numeric(19,5), @SVC_Discount_Recognized numeric(19,5), @SVC_Discount_Remaining numeric(19,5), @SVC_Discount_Next numeric(19,5), @SVC_PM_Date smallint, @SVC_PM_Day smallint, @CURRNIDX smallint, @RATETPID char(15), @EXGTBLID char(15), @XCHGRATE numeric(19,7), @EXCHDATE datetime, @DECPLACS smallint, @TIME1 datetime, @RATECALC smallint, @VIEWMODE smallint, @ISMCTRX smallint, @EXPNDATE datetime, @DENXRATE numeric(19,7), @MCTRXSTT smallint, @ORIGVALTIM numeric(19,5), @ORCOMAMT numeric(19,5), @ORIGRETNAGAM numeric(19,5), @ORIGRTNBILLD numeric(19,5), @ORIGLASTAmountBilled numeric(19,5), @ORIGTOTAL numeric(19,5), @ORIGTOTVALCAL numeric(19,5), @ORIGMINBIL numeric(19,5), @ORIGMAXBIL numeric(19,5), @Originating_Max_Billable numeric(19,5), @ORIGTOTBIL numeric(19,5), @Orig_Invoiced_Amount numeric(19,5), @Orig_Amount_To_Invoice numeric(19,5), @Orig_Liability_Amount numeric(19,5), @OrigTotLiabilityAmount numeric(19,5), @OrigTotLiabBilled numeric(19,5), @Originating_Total_Unit numeric(19,5), @ORUNTCST numeric(19,5), @ORDDLRAT numeric(19,5), @OrigDiscountReceived numeric(19,5), @OrigDiscountRemaining numeric(19,5), @OrigDiscountNext numeric(19,5), @ORIGUNITCOSTTOTAL numeric(19,5), @ORIGMONTHPRICE numeric(19,5), @ORIGINVOICEDDISC numeric(19,5), @OrigNewInvoiceAmount numeric(19,5), @TAXAMNT numeric(19,5), @ORTAXAMT numeric(19,5), @SVC_FO_ID char(51), @MovedRevenue numeric(19,5), @OriginalTotal numeric(19,5), @OrigMovedRevenue numeric(19,5), @OrigOriginalTotal numeric(19,5), @Credit_Hold tinyint, @ITEMDESC char(101), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00601 (CONSTS, CONTNBR, LNSEQNBR, Contract_Transfer_Status, Contract_Transfer_Date, CNTPRCOVR, NOTEINDX, ADRSCODE, QUANTITY, ITEMNMBR, CONFGREF, EQUIPID, SERLNMBR, FRZEND, FRXSTRT, BLKTIM, VALTIM, DSCPCTAM, COMDLRAM, COUNTRY, PRCSTAT, PORDNMBR, DSCRIPTN, PARTPCT, LABPCT, MISCPCT, PMMSCPCT, PMPRTPCT, PMLABPCT, VENDORID, RETNAGAM, RTNBILLD, SLPRSNID, COMMCODE, COMPRCNT, BILSTRT, BILEND, BILLNGTH, BILPRD, FRSTBLDTE, Last_Amount_Billed, LSTBLDTE, NBRCAL, TOTAL, ACTCAL, TOTVALCAL, CONTACT, CURNCYID, NXTBLDTE, CNTTYPE, PRICSHED, CUSTNMBR, ENTDTE, MINBIL, MAXBIL, MAXBILL, AUTOREN, priorityLevel, MSTCNTRCT, SRVTYPE, BILFRRET, TOTBIL, PREPAID, BILONDY, BILCYC, UOFM, BILSTAT, ENTTME, STRTDATE, ENDDATE, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, TAXSCHID, CNFGLVL, CNFGSEQ, Contract_Length, Contract_Period, Invoiced_Amount, Amount_To_Invoice, Liabiltiy_Reduction, Liability_Amount, Total_Liability_Amount, NUMOFINV, New_Invoice_Amount, Contract_Line_Status, Contract_Renewal_Contact, Contract_Response_Time, Liability_Months, Next_Liability_Date, Last_Liability_Date, Total_Liability_Billed, TAXEXMT1, TAXEXMT2, Total_Unit, UNITCOST, Unit_Cost_Total, SVC_Liability_Type, SVC_Contract_Signed, RETTYPE, SVC_Monthly_Price, Location_Segment, Bill_To_Customer, SVC_Bill_To_Address_Code, DSCDLRAM, SVC_Invoiced_Discount, SVC_Discount_Recognized, SVC_Discount_Remaining, SVC_Discount_Next, SVC_PM_Date, SVC_PM_Day, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGVALTIM, ORCOMAMT, ORIGRETNAGAM, ORIGRTNBILLD, ORIGLASTAmountBilled, ORIGTOTAL, ORIGTOTVALCAL, ORIGMINBIL, ORIGMAXBIL, Originating_Max_Billable, ORIGTOTBIL, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, Orig_Liability_Amount, OrigTotLiabilityAmount, OrigTotLiabBilled, Originating_Total_Unit, ORUNTCST, ORDDLRAT, OrigDiscountReceived, OrigDiscountRemaining, OrigDiscountNext, ORIGUNITCOSTTOTAL, ORIGMONTHPRICE, ORIGINVOICEDDISC, OrigNewInvoiceAmount, TAXAMNT, ORTAXAMT, SVC_FO_ID, MovedRevenue, OriginalTotal, OrigMovedRevenue, OrigOriginalTotal, Credit_Hold, ITEMDESC) VALUES ( @CONSTS, @CONTNBR, @LNSEQNBR, @Contract_Transfer_Status, @Contract_Transfer_Date, @CNTPRCOVR, @NOTEINDX, @ADRSCODE, @QUANTITY, @ITEMNMBR, @CONFGREF, @EQUIPID, @SERLNMBR, @FRZEND, @FRXSTRT, @BLKTIM, @VALTIM, @DSCPCTAM, @COMDLRAM, @COUNTRY, @PRCSTAT, @PORDNMBR, @DSCRIPTN, @PARTPCT, @LABPCT, @MISCPCT, @PMMSCPCT, @PMPRTPCT, @PMLABPCT, @VENDORID, @RETNAGAM, @RTNBILLD, @SLPRSNID, @COMMCODE, @COMPRCNT, @BILSTRT, @BILEND, @BILLNGTH, @BILPRD, @FRSTBLDTE, @Last_Amount_Billed, @LSTBLDTE, @NBRCAL, @TOTAL, @ACTCAL, @TOTVALCAL, @CONTACT, @CURNCYID, @NXTBLDTE, @CNTTYPE, @PRICSHED, @CUSTNMBR, @ENTDTE, @MINBIL, @MAXBIL, @MAXBILL, @AUTOREN, @priorityLevel, @MSTCNTRCT, @SRVTYPE, @BILFRRET, @TOTBIL, @PREPAID, @BILONDY, @BILCYC, @UOFM, @BILSTAT, @ENTTME, @STRTDATE, @ENDDATE, @CNTCOVPD_1, @CNTCOVPD_2, @CNTCOVPD_3, @CNTCOVPD_4, @CNTCOVPD_5, @CNTCOVPD_6, @CNTCOVPD_7, @Contract_Coverage_Period_1, @Contract_Coverage_Period_2, @Contract_Coverage_Period_3, @Contract_Coverage_Period_4, @Contract_Coverage_Period_5, @Contract_Coverage_Period_6, @Contract_Coverage_Period_7, @USECVPD_1, @USECVPD_2, @USECVPD_3, @USECVPD_4, @USECVPD_5, @USECVPD_6, @USECVPD_7, @TAXSCHID, @CNFGLVL, @CNFGSEQ, @Contract_Length, @Contract_Period, @Invoiced_Amount, @Amount_To_Invoice, @Liabiltiy_Reduction, @Liability_Amount, @Total_Liability_Amount, @NUMOFINV, @New_Invoice_Amount, @Contract_Line_Status, @Contract_Renewal_Contact, @Contract_Response_Time, @Liability_Months, @Next_Liability_Date, @Last_Liability_Date, @Total_Liability_Billed, @TAXEXMT1, @TAXEXMT2, @Total_Unit, @UNITCOST, @Unit_Cost_Total, @SVC_Liability_Type, @SVC_Contract_Signed, @RETTYPE, @SVC_Monthly_Price, @Location_Segment, @Bill_To_Customer, @SVC_Bill_To_Address_Code, @DSCDLRAM, @SVC_Invoiced_Discount, @SVC_Discount_Recognized, @SVC_Discount_Remaining, @SVC_Discount_Next, @SVC_PM_Date, @SVC_PM_Day, @CURRNIDX, @RATETPID, @EXGTBLID, @XCHGRATE, @EXCHDATE, @DECPLACS, @TIME1, @RATECALC, @VIEWMODE, @ISMCTRX, @EXPNDATE, @DENXRATE, @MCTRXSTT, @ORIGVALTIM, @ORCOMAMT, @ORIGRETNAGAM, @ORIGRTNBILLD, @ORIGLASTAmountBilled, @ORIGTOTAL, @ORIGTOTVALCAL, @ORIGMINBIL, @ORIGMAXBIL, @Originating_Max_Billable, @ORIGTOTBIL, @Orig_Invoiced_Amount, @Orig_Amount_To_Invoice, @Orig_Liability_Amount, @OrigTotLiabilityAmount, @OrigTotLiabBilled, @Originating_Total_Unit, @ORUNTCST, @ORDDLRAT, @OrigDiscountReceived, @OrigDiscountRemaining, @OrigDiscountNext, @ORIGUNITCOSTTOTAL, @ORIGMONTHPRICE, @ORIGINVOICEDDISC, @OrigNewInvoiceAmount, @TAXAMNT, @ORTAXAMT, @SVC_FO_ID, @MovedRevenue, @OriginalTotal, @OrigMovedRevenue, @OrigOriginalTotal, @Credit_Hold, @ITEMDESC) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00601SI] TO [DYNGRP]
GO