SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[HistoryContracts] AS select 'Contract Record Type' = dbo.FS_FUNC_Contract_Record_Type(['SVC_Contract_HDR_HIST'].[CONSTS]), rtrim(['SVC_Contract_HDR_HIST'].[CONTNBR]) as 'Contract Number', rtrim(['SVC_Contract_HDR_HIST'].[ADRSCODE]) as 'Address Code', ['SVC_Contract_HDR_HIST'].[BILSTRT] as 'Bill Start', ['SVC_Contract_HDR_HIST'].[BILEND] as 'Bill End', ['SVC_Contract_HDR_HIST'].[BILLNGTH] as 'Bill Length', 'Bill Period' = dbo.FS_FUNC_Bill_Period(['SVC_Contract_HDR_HIST'].[BILPRD]), ['SVC_Contract_HDR_HIST'].[TOTAL] as 'Total', rtrim(['RM Customer MSTR'].[CUSTNMBR]) as 'Customer ID', ['SVC_Contract_HDR_HIST'].[BILONDY] as 'Bill On Day', 'Billing Cycle' = dbo.FS_FUNC_Billing_Cycle(['SVC_Contract_HDR_HIST'].[BILCYC]), ['SVC_Contract_HDR_HIST'].[STRTDATE] as 'Start Date', ['SVC_Contract_HDR_HIST'].[ENDDATE] as 'End Date', 'SVC_Liability_Type' = dbo.FS_FUNC_SVC_Liability_Type(['SVC_Contract_HDR_HIST'].[SVC_Liability_Type]), ['SVC_Contract_HDR_HIST'].[SVC_Contract_Version] as 'SVC_Contract_Version',  ['SVC_Contract_HDR_HIST'].[ACTCAL] as 'Actual Number of Calls', ['SVC_Contract_HDR_HIST'].[Amount_To_Invoice] as 'Amount To Invoice', 'Auto Renewing' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[AUTOREN]), rtrim(['SVC_Contract_HDR_HIST'].[AUTOREN]) as 'Auto Renewing Evergreen', 'Bill For Retainer' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[BILFRRET]), rtrim(['RM Customer MSTR2'].[CUSTNMBR]) as 'Bill To Customer ID', rtrim(['RM Customer MSTR2'].[CUSTNAME]) as 'Bill To Customer Name', 'Billing Status' = dbo.FS_FUNC_Billing_Status(['SVC_Contract_HDR_HIST'].[BILSTAT]), ['SVC_Contract_HDR_HIST'].[BLKTIM] as 'Blocked Time', rtrim(['SVC_Contract_HDR_HIST'].[COMMCODE]) as 'Commission Code', ['SVC_Contract_HDR_HIST'].[COMDLRAM] as 'Commission Dollar Amount', ['SVC_Contract_HDR_HIST'].[COMPRCNT] as 'Commission Percent', rtrim(['SVC_Contract_HDR_HIST'].[CONTACT]) as 'Contact', ['SVC_Contract_HDR_HIST'].[Contract_Coverage_Period_1] as 'Contract Coverage Periods End', ['SVC_Contract_HDR_HIST'].[CNTCOVPD_1] as 'Contract Coverage Periods Start', ['SVC_Contract_HDR_HIST'].[Contract_Length] as 'Contract Length', 'Contract Period' = dbo.FS_FUNC_Contract_Period(['SVC_Contract_HDR_HIST'].[Contract_Period]), ['SVC_Contract_HDR_HIST'].[CONTPRC] as 'Contract Price', rtrim(['SVC_Contract_HDR_HIST'].[Contract_Renewal_Contact]) as 'Contract Renewal Contact', rtrim(['SVC_Contract_HDR_HIST'].[Contract_Response_Time]) as 'Contract Response Time', ['SVC_Contract_HDR_HIST'].[Contract_Transfer_Date] as 'Contract Transfer Date', 'Contract Transfer Status' = dbo.FS_FUNC_Contract_Transfer_Status(['SVC_Contract_HDR_HIST'].[Contract_Transfer_Status]), rtrim(['SVC_Contract_HDR_HIST'].[CNTTYPE]) as 'Contract Type', rtrim(['SVC_Contract_HDR_HIST'].[COUNTRY]) as 'Country', 'Credit Hold' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[Credit_Hold]), rtrim(['SVC_Contract_HDR_HIST'].[CURNCYID]) as 'Currency ID', ['SVC_Contract_HDR_HIST'].[CURRNIDX] as 'Currency Index', rtrim(['RM Customer MSTR'].[CUSTNAME]) as 'Customer Name', 'Decimal Places' = dbo.DYN_FUNC_Decimal_Places_QTYS(['SVC_Contract_HDR_HIST'].[DECPLACS]), ['SVC_Contract_HDR_HIST'].[DENXRATE] as 'Denomination Exchange Rate', rtrim(['SVC_Contract_HDR_HIST'].[DSCRIPTN]) as 'Description', ['SVC_Contract_HDR_HIST'].[DSCDLRAM] as 'Discount Dollar Amount', ['SVC_Contract_HDR_HIST'].[DSCPCTAM]/100.00 as 'Discount Percent Amount', ['SVC_Contract_HDR_HIST'].[ENTDTE] as 'Entry Date', ['SVC_Contract_HDR_HIST'].[ENTTME] as 'Entry Time', 'Evergreen Contract' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[SVC_Evergreen_Contract]), ['SVC_Contract_HDR_HIST'].[SVC_Evergreen_RenewLimit] as 'Evergreen Renew Limit', ['SVC_Contract_HDR_HIST'].[SVC_Evergreen_Renewals] as 'Evergreen Renewals', ['SVC_Contract_HDR_HIST'].[EXCHDATE] as 'Exchange Date', ['SVC_Contract_HDR_HIST'].[XCHGRATE] as 'Exchange Rate', rtrim(['SVC_Contract_HDR_HIST'].[EXGTBLID]) as 'Exchange Table ID', ['SVC_Contract_HDR_HIST'].[EXPNDATE] as 'Expiration Date', ['SVC_Contract_HDR_HIST'].[FRSTBLDTE] as 'First Bill Date', ['SVC_Contract_HDR_HIST'].[FRZEND] as 'Frozen End', ['SVC_Contract_HDR_HIST'].[FRXSTRT] as 'Frozen Start', ['SVC_Contract_HDR_HIST'].[ISMCTRX] as 'IS MC Trx', ['SVC_Contract_HDR_HIST'].[Invoiced_Amount] as 'Invoiced Amount', ['SVC_Contract_HDR_HIST'].[LABPCT] as 'Labor Pct', ['SVC_Contract_HDR_HIST'].[Last_Amount_Billed] as 'Last Amount Billed', ['SVC_Contract_HDR_HIST'].[LSTBLDTE] as 'Last Bill Date', ['SVC_Contract_HDR_HIST'].[Last_Liability_Date] as 'Last Liability Date', ['SVC_Contract_HDR_HIST'].[Liability_Amount] as 'Liability Amount', ['SVC_Contract_HDR_HIST'].[Liability_Months] as 'Liability Months', 'Liability Reduction' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[Liabiltiy_Reduction]), rtrim(['SVC_Contract_HDR_HIST'].[Location_Segment]) as 'Location Segment', ['SVC_Contract_HDR_HIST'].[MCTRXSTT] as 'MC Transaction State', rtrim(['SVC_Contract_HDR_HIST'].[MSTCNTRCT]) as 'Master Contract Number', ['SVC_Contract_HDR_HIST'].[MAXBILL] as 'Max Billable', ['SVC_Contract_HDR_HIST'].[MAXBIL] as 'Max Billable Call', ['SVC_Contract_HDR_HIST'].[MXINCPCT] as 'Max Increase Percentage', ['SVC_Contract_HDR_HIST'].[NBRCAL] as 'Max Number of Calls', ['SVC_Contract_HDR_HIST'].[MINBIL] as 'Min Billable Call', ['SVC_Contract_HDR_HIST'].[MISCPCT] as 'Misc Pct',  'New PO Required' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[New_PO_Required]), ['SVC_Contract_HDR_HIST'].[NXTBLDTE] as 'Next Bill Date', ['SVC_Contract_HDR_HIST'].[Next_Liability_Date] as 'Next Liability Date', ['SVC_Contract_HDR_HIST'].[NOTEINDX] as 'Note Index', ['SVC_Contract_HDR_HIST'].[NUMOFINV] as 'Number of Invoices', ['SVC_Contract_HDR_HIST'].[Orig_Amount_To_Invoice] as 'Originating Amount To Invoice', ['SVC_Contract_HDR_HIST'].[ORCOMAMT] as 'Originating Commission Dollar Amount', ['SVC_Contract_HDR_HIST'].[ORDDLRAT] as 'Originating Discount Dollar Amount', ['SVC_Contract_HDR_HIST'].[OrigDiscountNext] as 'Originating Discount Next', ['SVC_Contract_HDR_HIST'].[OrigDiscountReceived] as 'Originating Discount Recognized', ['SVC_Contract_HDR_HIST'].[OrigDiscountRemaining] as 'Originating Discount Remaining', ['SVC_Contract_HDR_HIST'].[Orig_Invoiced_Amount] as 'Originating Invoiced Amount', ['SVC_Contract_HDR_HIST'].[ORIGLASTAmountBilled] as 'Originating Last Amount Billed', ['SVC_Contract_HDR_HIST'].[Orig_Liability_Amount] as 'Originating Liability Amount', ['SVC_Contract_HDR_HIST'].[Originating_Max_Billable] as 'Originating Max Billable', ['SVC_Contract_HDR_HIST'].[ORIGMAXBIL] as 'Originating Max Billable Call', ['SVC_Contract_HDR_HIST'].[ORIGMINBIL] as 'Originating Min Billable Call', ['SVC_Contract_HDR_HIST'].[ORIGRETNAGAM] as 'Originating Retainage Amount', ['SVC_Contract_HDR_HIST'].[ORIGRTNBILLD] as 'Originating Retainage Billed', ['SVC_Contract_HDR_HIST'].[Orig_SVC_Invoiced_Cost] as 'Originating SVC Invoiced Cost', ['SVC_Contract_HDR_HIST'].[ORIGTOTAL] as 'Originating Service Total', ['SVC_Contract_HDR_HIST'].[ORIGTOTBIL] as 'Originating Total Billed', ['SVC_Contract_HDR_HIST'].[OrigTotLiabilityAmount] as 'Originating Total Liability Amount', ['SVC_Contract_HDR_HIST'].[OrigTotLiabBilled] as 'Originating Total Liability Billed', ['SVC_Contract_HDR_HIST'].[Originating_Total_Unit] as 'Originating Total Unit', ['SVC_Contract_HDR_HIST'].[ORIGTOTVALCAL] as 'Originating Total Value of Calls', ['SVC_Contract_HDR_HIST'].[ORIGVALTIM] as 'Originating Value of Time', ['SVC_Contract_HDR_HIST'].[PMLABPCT] as 'PM Labor Pct', ['SVC_Contract_HDR_HIST'].[PMMSCPCT] as 'PM Misc Pct', ['SVC_Contract_HDR_HIST'].[PMPRTPCT] as 'PM Part Pct', ['SVC_Contract_HDR_HIST'].[PARTPCT] as 'Part Pct', ['SVC_Contract_HDR_HIST'].[PCTCRYFWD] as 'Percentage Carried Forward', 'Pre Paid' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[PREPAID]), rtrim(['SVC_Contract_HDR_HIST'].[PRICSHED]) as 'Price Schedule', ['SVC_Contract_HDR_HIST'].[priorityLevel] as 'priorityLevel', rtrim(['SVC_Contract_HDR_HIST'].[PORDNMBR]) as 'Purchase Order Number', ['SVC_Contract_HDR_HIST'].[QUOEXPDA] as 'Quote Expiration Date', ['SVC_Contract_HDR_HIST'].[RATECALC] as 'Rate Calc Method', rtrim(['SVC_Contract_HDR_HIST'].[RATETPID]) as 'Rate Type ID', 'Renewing Contract Type' = dbo.FS_FUNC_Renewing_Contract_Type(['SVC_Contract_HDR_HIST'].[RENCNTTYP]), rtrim(['SVC_Contract_HDR_HIST'].[RENPRCSCHD]) as 'Renewing Price Schedule', ['SVC_Contract_HDR_HIST'].[RETNAGAM] as 'Retainage Amount', ['SVC_Contract_HDR_HIST'].[RTNBILLD] as 'Retainage Billed', rtrim(['SVC_Contract_HDR_HIST'].[SVC_Bill_To_Address_Code]) as 'SVC Bill To Address Code', ['SVC_Contract_HDR_HIST'].[SVC_Contract_Signed] as 'SVC_Contract_Signed', rtrim(['SVC_Contract_HDR_HIST'].[Created_User_ID]) as 'SVC_Created User ID', ['SVC_Contract_HDR_HIST'].[SVC_Discount_Next] as 'SVC Discount Next', ['SVC_Contract_HDR_HIST'].[SVC_Discount_Recognized] as 'SVC Discount Recognized', ['SVC_Contract_HDR_HIST'].[SVC_Discount_Remaining] as 'SVC Discount Remaining', rtrim(['SVC_Contract_HDR_HIST'].[SVC_FO_ID]) as 'SVC FO ID', 'SVC Invoice Detail' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[SVC_Invoice_Detail]), ['SVC_Contract_HDR_HIST'].[SVC_Invoiced_Cost] as 'SVC Invoiced Cost', rtrim(['SVC_Contract_HDR_HIST'].[SVC_New_Contract_Number]) as 'SVC New Contract Number', 'SVC Paid Contract' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[SVC_Paid_Contract]), rtrim(['SVC_Contract_HDR_HIST'].[RETTYPE]) as 'SVC Return Type', 'SVC Use Same Number' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[SVC_Use_Same_Number]), rtrim(['SVC_Contract_HDR_HIST'].[SLPRSNID]) as 'Salesperson ID', rtrim(['SVC_Contract_HDR_HIST'].[SRVTYPE]) as 'Service Type', 'Smooth Invoice Calculation' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[SmoothInvoiceCalc]), 'Smooth Revenue Calculation' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[SmoothRevenueCalc]), rtrim(['SVC_Contract_HDR_HIST'].[Source_Contract_Number]) as 'Source Contract Number', 'Source Contract Type' = dbo.FS_FUNC_Source_Contract_Type(['SVC_Contract_HDR_HIST'].[Source_Contract_Type]), rtrim(['SVC_Contract_HDR_HIST'].[Source_User_ID]) as 'Source User ID', rtrim(['SVC_Contract_HDR_HIST'].[PRCSTAT]) as 'Status of Price', rtrim(['SVC_Contract_HDR_HIST'].[TAXEXMT1]) as 'Tax Exempt 1', rtrim(['SVC_Contract_HDR_HIST'].[TAXEXMT2]) as 'Tax Exempt 2', rtrim(['SVC_Contract_HDR_HIST'].[TAXSCHID]) as 'Tax Schedule ID', ['SVC_Contract_HDR_HIST'].[TIME1] as 'Time', rtrim(['SVC_Contract_HDR_HIST'].[TIMEZONE]) as 'TimeZone', ['SVC_Contract_HDR_HIST'].[TOTBIL] as 'Total Billed', ['SVC_Contract_HDR_HIST'].[Total_Liability_Amount] as 'Total Liability Amount', ['SVC_Contract_HDR_HIST'].[Total_Liability_Billed] as 'Total Liability Billed', ['SVC_Contract_HDR_HIST'].[Total_Unit] as 'Total Unit', ['SVC_Contract_HDR_HIST'].[TOTVALCAL] as 'Total Value of Calls', rtrim(['SVC_Contract_HDR_HIST'].[UOFM]) as 'U Of M',  'Use Coverage Period' = dbo.DYN_FUNC_Boolean_All(['SVC_Contract_HDR_HIST'].[USECVPD_1]), rtrim(['SVC_Contract_HDR_HIST'].[USERDEF1]) as 'User Defined 1', rtrim(['SVC_Contract_HDR_HIST'].[USERDEF2]) as 'User Defined 2', rtrim(['SVC_Contract_HDR_HIST'].[USRDEF03]) as 'User Defined 3', rtrim(['SVC_Contract_HDR_HIST'].[USRDEF04]) as 'User Defined 4', rtrim(['SVC_Contract_HDR_HIST'].[USRDEF05]) as 'User Defined 5', ['SVC_Contract_HDR_HIST'].[VALTIM] as 'Value of Time', rtrim(['SVC_Contract_HDR_HIST'].[VENDORID]) as 'Vendor ID', ['SVC_Contract_HDR_HIST'].[VIEWMODE] as 'View Mode',  'Customer ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppCustomerID(1,['RM Customer MSTR'].[CUSTNMBR] ), 'Salesperson ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppSalespersonID(1,['SVC_Contract_HDR_HIST'].[SLPRSNID],2 ), 'Vendor ID For Drillback' = 'dgpp://DGPB/?Db=&Srv=TLEFLSQL3&Cmp=TLECO&Prod=0' +dbo.dgppVendorID(1,['SVC_Contract_HDR_HIST'].[VENDORID] )        from [SVC30600] as ['SVC_Contract_HDR_HIST'] with (NOLOCK) left outer join [RM00101] as ['RM Customer MSTR'] with (NOLOCK) on ['SVC_Contract_HDR_HIST'].[CUSTNMBR] = ['RM Customer MSTR'].[CUSTNMBR] left outer join [RM00101] as ['RM Customer MSTR2'] with (NOLOCK) on ['SVC_Contract_HDR_HIST'].[Bill_To_Customer] = ['RM Customer MSTR2'].[CUSTNMBR] 
GO
GRANT SELECT ON  [dbo].[HistoryContracts] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[HistoryContracts] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[HistoryContracts] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[HistoryContracts] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[HistoryContracts] TO [rpt_customer service rep]
GO
GRANT SELECT ON  [dbo].[HistoryContracts] TO [rpt_dispatcher]
GO
GRANT SELECT ON  [dbo].[HistoryContracts] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[HistoryContracts] TO [rpt_project manager]
GO