SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00608SS_2] (@CONSTS smallint, @CUSTNMBR char(15), @ADRSCODE char(15), @Cover_All tinyint, @CONTNBR char(11)) AS  set nocount on SELECT TOP 1  CONSTS, CONTNBR, LNSEQNBR, Contract_Transfer_Status, Contract_Transfer_Date, TAXSCHID, priorityLevel, ADRSCODE, NOTEINDX, TIMEZONE, CONTPRC, RENCNTTYP, RENPRCSCHD, PCTCRYFWD, FRZEND, FRXSTRT, MXINCPCT, BLKTIM, VALTIM, DSCPCTAM, COMDLRAM, COUNTRY, PRCSTAT, PORDNMBR, DSCRIPTN, PARTPCT, LABPCT, MISCPCT, PMMSCPCT, PMPRTPCT, PMLABPCT, VENDORID, RETNAGAM, RTNBILLD, SLPRSNID, COMMCODE, COMPRCNT, BILSTRT, BILEND, BILLNGTH, BILPRD, TOTAL, FRSTBLDTE, Last_Amount_Billed, LSTBLDTE, NBRCAL, ACTCAL, TOTVALCAL, CONTACT, CURNCYID, NXTBLDTE, CNTTYPE, PRICSHED, CUSTNMBR, ENTDTE, MINBIL, MAXBIL, MAXBILL, AUTOREN, MSTCNTRCT, SRVTYPE, BILFRRET, TOTBIL, PREPAID, BILONDY, BILCYC, UOFM, BILSTAT, ENTTME, STRTDATE, ENDDATE, CNTCOVPD_1, CNTCOVPD_2, CNTCOVPD_3, CNTCOVPD_4, CNTCOVPD_5, CNTCOVPD_6, CNTCOVPD_7, Contract_Coverage_Period_1, Contract_Coverage_Period_2, Contract_Coverage_Period_3, Contract_Coverage_Period_4, Contract_Coverage_Period_5, Contract_Coverage_Period_6, Contract_Coverage_Period_7, USECVPD_1, USECVPD_2, USECVPD_3, USECVPD_4, USECVPD_5, USECVPD_6, USECVPD_7, Contract_Length, Contract_Period, Invoiced_Amount, Liabiltiy_Reduction, Amount_To_Invoice, Liability_Amount, Total_Liability_Amount, NUMOFINV, Quote_Status, QUOEXPDA, Credit_Hold, TAXEXMT1, TAXEXMT2, New_PO_Required, Contract_Renewal_Contact, Source_Contract_Number, Source_Contract_Type, Contract_Response_Time, Liability_Months, Next_Liability_Date, Last_Liability_Date, Total_Liability_Billed, Total_Unit, Created_User_ID, Source_User_ID, SVC_Contract_Signed, SVC_Liability_Type, RETTYPE, Location_Segment, Bill_To_Customer, Cover_All, canceled, CURRNIDX, RATETPID, EXGTBLID, XCHGRATE, EXCHDATE, DECPLACS, TIME1, RATECALC, VIEWMODE, ISMCTRX, EXPNDATE, DENXRATE, MCTRXSTT, ORIGVALTIM, ORCOMAMT, ORIGRETNAGAM, ORIGRTNBILLD, ORIGLASTAmountBilled, ORIGTOTAL, ORIGTOTVALCAL, ORIGMINBIL, ORIGMAXBIL, Originating_Max_Billable, ORIGTOTBIL, Orig_Invoiced_Amount, Orig_Amount_To_Invoice, Orig_Liability_Amount, OrigTotLiabilityAmount, OrigTotLiabBilled, Originating_Total_Unit, SVC_Bill_To_Address_Code, svcBillingFrequency, DEX_ROW_ID FROM .SVC00608 WHERE CONSTS = @CONSTS AND CUSTNMBR = @CUSTNMBR AND ADRSCODE = @ADRSCODE AND Cover_All = @Cover_All AND CONTNBR = @CONTNBR ORDER BY CONSTS ASC, CUSTNMBR ASC, ADRSCODE ASC, Cover_All ASC, CONTNBR ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00608SS_2] TO [DYNGRP]
GO