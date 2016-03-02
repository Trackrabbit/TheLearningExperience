CREATE TABLE [dbo].[SVC00600]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Contract_Transfer_Status] [smallint] NOT NULL,
[Contract_Transfer_Date] [datetime] NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[priorityLevel] [smallint] NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[TIMEZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTPRC] [numeric] (19, 5) NOT NULL,
[RENCNTTYP] [smallint] NOT NULL,
[RENPRCSCHD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PCTCRYFWD] [numeric] (19, 5) NOT NULL,
[FRZEND] [datetime] NOT NULL,
[FRXSTRT] [datetime] NOT NULL,
[MXINCPCT] [numeric] (19, 5) NOT NULL,
[BLKTIM] [numeric] (19, 5) NOT NULL,
[VALTIM] [numeric] (19, 5) NOT NULL,
[DSCPCTAM] [smallint] NOT NULL,
[COMDLRAM] [numeric] (19, 5) NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCSTAT] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PARTPCT] [numeric] (19, 5) NOT NULL,
[LABPCT] [numeric] (19, 5) NOT NULL,
[MISCPCT] [numeric] (19, 5) NOT NULL,
[PMMSCPCT] [numeric] (19, 5) NOT NULL,
[PMPRTPCT] [numeric] (19, 5) NOT NULL,
[PMLABPCT] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RETNAGAM] [numeric] (19, 5) NOT NULL,
[RTNBILLD] [numeric] (19, 5) NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMPRCNT] [smallint] NOT NULL,
[BILSTRT] [datetime] NOT NULL,
[BILEND] [datetime] NOT NULL,
[BILLNGTH] [smallint] NOT NULL,
[BILPRD] [smallint] NOT NULL,
[TOTAL] [numeric] (19, 5) NOT NULL,
[FRSTBLDTE] [datetime] NOT NULL,
[Last_Amount_Billed] [numeric] (19, 5) NOT NULL,
[LSTBLDTE] [datetime] NOT NULL,
[NBRCAL] [smallint] NOT NULL,
[ACTCAL] [smallint] NOT NULL,
[TOTVALCAL] [numeric] (19, 5) NOT NULL,
[CONTACT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NXTBLDTE] [datetime] NOT NULL,
[CNTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRICSHED] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTDTE] [datetime] NOT NULL,
[MINBIL] [numeric] (19, 5) NOT NULL,
[MAXBIL] [numeric] (19, 5) NOT NULL,
[MAXBILL] [numeric] (19, 5) NOT NULL,
[AUTOREN] [tinyint] NOT NULL,
[MSTCNTRCT] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRVTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BILFRRET] [tinyint] NOT NULL,
[TOTBIL] [numeric] (19, 5) NOT NULL,
[PREPAID] [tinyint] NOT NULL,
[BILONDY] [smallint] NOT NULL,
[BILCYC] [smallint] NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BILSTAT] [smallint] NOT NULL,
[ENTTME] [datetime] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[CNTCOVPD_1] [datetime] NOT NULL,
[CNTCOVPD_2] [datetime] NOT NULL,
[CNTCOVPD_3] [datetime] NOT NULL,
[CNTCOVPD_4] [datetime] NOT NULL,
[CNTCOVPD_5] [datetime] NOT NULL,
[CNTCOVPD_6] [datetime] NOT NULL,
[CNTCOVPD_7] [datetime] NOT NULL,
[Contract_Coverage_Period_1] [datetime] NOT NULL,
[Contract_Coverage_Period_2] [datetime] NOT NULL,
[Contract_Coverage_Period_3] [datetime] NOT NULL,
[Contract_Coverage_Period_4] [datetime] NOT NULL,
[Contract_Coverage_Period_5] [datetime] NOT NULL,
[Contract_Coverage_Period_6] [datetime] NOT NULL,
[Contract_Coverage_Period_7] [datetime] NOT NULL,
[USECVPD_1] [tinyint] NOT NULL,
[USECVPD_2] [tinyint] NOT NULL,
[USECVPD_3] [tinyint] NOT NULL,
[USECVPD_4] [tinyint] NOT NULL,
[USECVPD_5] [tinyint] NOT NULL,
[USECVPD_6] [tinyint] NOT NULL,
[USECVPD_7] [tinyint] NOT NULL,
[Contract_Length] [smallint] NOT NULL,
[Contract_Period] [smallint] NOT NULL,
[Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[Liabiltiy_Reduction] [tinyint] NOT NULL,
[Amount_To_Invoice] [numeric] (19, 5) NOT NULL,
[Liability_Amount] [numeric] (19, 5) NOT NULL,
[Total_Liability_Amount] [numeric] (19, 5) NOT NULL,
[NUMOFINV] [int] NOT NULL,
[Quote_Status] [smallint] NOT NULL,
[QUOEXPDA] [datetime] NOT NULL,
[Credit_Hold] [tinyint] NOT NULL,
[TAXEXMT1] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXEXMT2] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[New_PO_Required] [tinyint] NOT NULL,
[Contract_Renewal_Contact] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Source_Contract_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Source_Contract_Type] [smallint] NOT NULL,
[Contract_Response_Time] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Liability_Months] [smallint] NOT NULL,
[Next_Liability_Date] [datetime] NOT NULL,
[Last_Liability_Date] [datetime] NOT NULL,
[Total_Liability_Billed] [numeric] (19, 5) NOT NULL,
[Total_Unit] [numeric] (19, 5) NOT NULL,
[Created_User_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Source_User_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Signed] [datetime] NOT NULL,
[SVC_Liability_Type] [smallint] NOT NULL,
[RETTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Location_Segment] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Bill_To_Customer] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Invoice_Detail] [tinyint] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF03] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF04] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEF05] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Bill_To_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[SVC_Paid_Contract] [tinyint] NOT NULL,
[SVC_Discount_Recognized] [numeric] (19, 5) NOT NULL,
[SVC_Discount_Remaining] [numeric] (19, 5) NOT NULL,
[SVC_Discount_Next] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[TIME1] [datetime] NOT NULL,
[RATECALC] [smallint] NOT NULL,
[VIEWMODE] [smallint] NOT NULL,
[ISMCTRX] [smallint] NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[ORIGVALTIM] [numeric] (19, 5) NOT NULL,
[ORCOMAMT] [numeric] (19, 5) NOT NULL,
[ORIGRETNAGAM] [numeric] (19, 5) NOT NULL,
[ORIGRTNBILLD] [numeric] (19, 5) NOT NULL,
[ORIGTOTAL] [numeric] (19, 5) NOT NULL,
[ORIGLASTAmountBilled] [numeric] (19, 5) NOT NULL,
[ORIGTOTVALCAL] [numeric] (19, 5) NOT NULL,
[ORIGMINBIL] [numeric] (19, 5) NOT NULL,
[ORIGMAXBIL] [numeric] (19, 5) NOT NULL,
[Originating_Max_Billable] [numeric] (19, 5) NOT NULL,
[ORIGTOTBIL] [numeric] (19, 5) NOT NULL,
[Orig_Invoiced_Amount] [numeric] (19, 5) NOT NULL,
[Orig_Amount_To_Invoice] [numeric] (19, 5) NOT NULL,
[Orig_Liability_Amount] [numeric] (19, 5) NOT NULL,
[OrigTotLiabilityAmount] [numeric] (19, 5) NOT NULL,
[OrigTotLiabBilled] [numeric] (19, 5) NOT NULL,
[Originating_Total_Unit] [numeric] (19, 5) NOT NULL,
[ORDDLRAT] [numeric] (19, 5) NOT NULL,
[OrigDiscountReceived] [numeric] (19, 5) NOT NULL,
[OrigDiscountRemaining] [numeric] (19, 5) NOT NULL,
[OrigDiscountNext] [numeric] (19, 5) NOT NULL,
[SmoothInvoiceCalc] [tinyint] NOT NULL,
[SmoothRevenueCalc] [tinyint] NOT NULL,
[SVC_Use_Same_Number] [tinyint] NOT NULL,
[SVC_FO_ID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Invoiced_Cost] [numeric] (19, 5) NOT NULL,
[Orig_SVC_Invoiced_Cost] [numeric] (19, 5) NOT NULL,
[SVC_Evergreen_Contract] [tinyint] NOT NULL,
[SVC_Evergreen_RenewLimit] [smallint] NOT NULL,
[SVC_Evergreen_Renewals] [smallint] NOT NULL,
[SVC_New_Contract_Number] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_New_PO_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Workflow_Approval_Status] [smallint] NOT NULL,
[Workflow_Priority] [smallint] NOT NULL,
[svcBillingFrequency] [smallint] NOT NULL,
[svcFrequencyQty] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__CNTCOV__306F045F] CHECK ((datepart(day,[CNTCOVPD_1])=(1) AND datepart(month,[CNTCOVPD_1])=(1) AND datepart(year,[CNTCOVPD_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__CNTCOV__31632898] CHECK ((datepart(day,[CNTCOVPD_2])=(1) AND datepart(month,[CNTCOVPD_2])=(1) AND datepart(year,[CNTCOVPD_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__CNTCOV__32574CD1] CHECK ((datepart(day,[CNTCOVPD_3])=(1) AND datepart(month,[CNTCOVPD_3])=(1) AND datepart(year,[CNTCOVPD_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__CNTCOV__334B710A] CHECK ((datepart(day,[CNTCOVPD_4])=(1) AND datepart(month,[CNTCOVPD_4])=(1) AND datepart(year,[CNTCOVPD_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__CNTCOV__343F9543] CHECK ((datepart(day,[CNTCOVPD_5])=(1) AND datepart(month,[CNTCOVPD_5])=(1) AND datepart(year,[CNTCOVPD_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__CNTCOV__3533B97C] CHECK ((datepart(day,[CNTCOVPD_6])=(1) AND datepart(month,[CNTCOVPD_6])=(1) AND datepart(year,[CNTCOVPD_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__CNTCOV__3627DDB5] CHECK ((datepart(day,[CNTCOVPD_7])=(1) AND datepart(month,[CNTCOVPD_7])=(1) AND datepart(year,[CNTCOVPD_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__Contra__38102627] CHECK ((datepart(day,[Contract_Coverage_Period_1])=(1) AND datepart(month,[Contract_Coverage_Period_1])=(1) AND datepart(year,[Contract_Coverage_Period_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__Contra__39044A60] CHECK ((datepart(day,[Contract_Coverage_Period_2])=(1) AND datepart(month,[Contract_Coverage_Period_2])=(1) AND datepart(year,[Contract_Coverage_Period_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__Contra__39F86E99] CHECK ((datepart(day,[Contract_Coverage_Period_3])=(1) AND datepart(month,[Contract_Coverage_Period_3])=(1) AND datepart(year,[Contract_Coverage_Period_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__Contra__3AEC92D2] CHECK ((datepart(day,[Contract_Coverage_Period_4])=(1) AND datepart(month,[Contract_Coverage_Period_4])=(1) AND datepart(year,[Contract_Coverage_Period_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__Contra__3BE0B70B] CHECK ((datepart(day,[Contract_Coverage_Period_5])=(1) AND datepart(month,[Contract_Coverage_Period_5])=(1) AND datepart(year,[Contract_Coverage_Period_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__Contra__3CD4DB44] CHECK ((datepart(day,[Contract_Coverage_Period_6])=(1) AND datepart(month,[Contract_Coverage_Period_6])=(1) AND datepart(year,[Contract_Coverage_Period_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__Contra__3DC8FF7D] CHECK ((datepart(day,[Contract_Coverage_Period_7])=(1) AND datepart(month,[Contract_Coverage_Period_7])=(1) AND datepart(year,[Contract_Coverage_Period_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__ENTTME__40A56C28] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__TIME1__4D0B430D] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__BILEND__2E86BBED] CHECK ((datepart(hour,[BILEND])=(0) AND datepart(minute,[BILEND])=(0) AND datepart(second,[BILEND])=(0) AND datepart(millisecond,[BILEND])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__BILSTR__2F7AE026] CHECK ((datepart(hour,[BILSTRT])=(0) AND datepart(minute,[BILSTRT])=(0) AND datepart(second,[BILSTRT])=(0) AND datepart(millisecond,[BILSTRT])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__Contra__371C01EE] CHECK ((datepart(hour,[Contract_Transfer_Date])=(0) AND datepart(minute,[Contract_Transfer_Date])=(0) AND datepart(second,[Contract_Transfer_Date])=(0) AND datepart(millisecond,[Contract_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__ENDDAT__3EBD23B6] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__ENTDTE__3FB147EF] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__EXCHDA__41999061] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__EXPNDA__428DB49A] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__FRSTBL__4381D8D3] CHECK ((datepart(hour,[FRSTBLDTE])=(0) AND datepart(minute,[FRSTBLDTE])=(0) AND datepart(second,[FRSTBLDTE])=(0) AND datepart(millisecond,[FRSTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__FRXSTR__4475FD0C] CHECK ((datepart(hour,[FRXSTRT])=(0) AND datepart(minute,[FRXSTRT])=(0) AND datepart(second,[FRXSTRT])=(0) AND datepart(millisecond,[FRXSTRT])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__FRZEND__456A2145] CHECK ((datepart(hour,[FRZEND])=(0) AND datepart(minute,[FRZEND])=(0) AND datepart(second,[FRZEND])=(0) AND datepart(millisecond,[FRZEND])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__Last_L__475269B7] CHECK ((datepart(hour,[Last_Liability_Date])=(0) AND datepart(minute,[Last_Liability_Date])=(0) AND datepart(second,[Last_Liability_Date])=(0) AND datepart(millisecond,[Last_Liability_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__LSTBLD__465E457E] CHECK ((datepart(hour,[LSTBLDTE])=(0) AND datepart(minute,[LSTBLDTE])=(0) AND datepart(second,[LSTBLDTE])=(0) AND datepart(millisecond,[LSTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__Next_L__493AB229] CHECK ((datepart(hour,[Next_Liability_Date])=(0) AND datepart(minute,[Next_Liability_Date])=(0) AND datepart(second,[Next_Liability_Date])=(0) AND datepart(millisecond,[Next_Liability_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__NXTBLD__48468DF0] CHECK ((datepart(hour,[NXTBLDTE])=(0) AND datepart(minute,[NXTBLDTE])=(0) AND datepart(second,[NXTBLDTE])=(0) AND datepart(millisecond,[NXTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__QUOEXP__4A2ED662] CHECK ((datepart(hour,[QUOEXPDA])=(0) AND datepart(minute,[QUOEXPDA])=(0) AND datepart(second,[QUOEXPDA])=(0) AND datepart(millisecond,[QUOEXPDA])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__STRTDA__4B22FA9B] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [CK__SVC00600__SVC_Co__4C171ED4] CHECK ((datepart(hour,[SVC_Contract_Signed])=(0) AND datepart(minute,[SVC_Contract_Signed])=(0) AND datepart(second,[SVC_Contract_Signed])=(0) AND datepart(millisecond,[SVC_Contract_Signed])=(0)))
GO
ALTER TABLE [dbo].[SVC00600] ADD CONSTRAINT [PKSVC00600] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7SVC00600] ON [dbo].[SVC00600] ([AUTOREN], [ENDDATE], [CONSTS], [CONTNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00600] ON [dbo].[SVC00600] ([CONSTS], [CUSTNMBR], [CONTNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SVC00600] ON [dbo].[SVC00600] ([CONSTS], [Liabiltiy_Reduction], [CONTNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC00600] ON [dbo].[SVC00600] ([CONSTS], [NXTBLDTE], [CONTNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SVC00600] ON [dbo].[SVC00600] ([CONSTS], [STRTDATE], [CONTNBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6SVC00600] ON [dbo].[SVC00600] ([SVC_Evergreen_Contract], [CONSTS], [CONTNBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[Contract_Transfer_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[Contract_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[priorityLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[TIMEZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[CONTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[RENCNTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[RENPRCSCHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[PCTCRYFWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[FRZEND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[FRXSTRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[MXINCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[BLKTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[VALTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[PRCSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[PARTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[LABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[MISCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[PMMSCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[PMPRTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[PMLABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[RETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[RTNBILLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[COMMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[COMPRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[BILSTRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[BILEND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[BILLNGTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[BILPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[FRSTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Last_Amount_Billed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[LSTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[NBRCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[ACTCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[TOTVALCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[NXTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[CNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[PRICSHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[MINBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[MAXBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[MAXBILL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[AUTOREN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[MSTCNTRCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[BILFRRET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[TOTBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[PREPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[BILONDY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[BILCYC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[BILSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[CNTCOVPD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[CNTCOVPD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[CNTCOVPD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[CNTCOVPD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[CNTCOVPD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[CNTCOVPD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[CNTCOVPD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[Contract_Coverage_Period_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[Contract_Coverage_Period_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[Contract_Coverage_Period_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[Contract_Coverage_Period_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[Contract_Coverage_Period_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[Contract_Coverage_Period_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[Contract_Coverage_Period_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[USECVPD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[USECVPD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[USECVPD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[USECVPD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[USECVPD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[USECVPD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[USECVPD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[Contract_Length]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[Contract_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[Liabiltiy_Reduction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Liability_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Total_Liability_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[NUMOFINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[Quote_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[QUOEXPDA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[Credit_Hold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[TAXEXMT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[TAXEXMT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[New_PO_Required]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[Contract_Renewal_Contact]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[Source_Contract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[Source_Contract_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[Contract_Response_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[Liability_Months]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[Next_Liability_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[Last_Liability_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Total_Liability_Billed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Total_Unit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[Created_User_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[Source_User_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[SVC_Contract_Signed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[SVC_Liability_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[RETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[Location_Segment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[SVC_Invoice_Detail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[USRDEF03]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[USRDEF04]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[USRDEF05]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[SVC_Bill_To_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[SVC_Paid_Contract]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[SVC_Discount_Recognized]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[SVC_Discount_Remaining]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[SVC_Discount_Next]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[VIEWMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[ISMCTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00600].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORIGVALTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORCOMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORIGRETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORIGRTNBILLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORIGTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORIGLASTAmountBilled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORIGTOTVALCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORIGMINBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORIGMAXBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Originating_Max_Billable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORIGTOTBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Orig_Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Orig_Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Orig_Liability_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[OrigTotLiabilityAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[OrigTotLiabBilled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Originating_Total_Unit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[ORDDLRAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[OrigDiscountReceived]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[OrigDiscountRemaining]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[OrigDiscountNext]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[SmoothInvoiceCalc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[SmoothRevenueCalc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[SVC_Use_Same_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[SVC_FO_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[SVC_Invoiced_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00600].[Orig_SVC_Invoiced_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[SVC_Evergreen_Contract]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[SVC_Evergreen_RenewLimit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[SVC_Evergreen_Renewals]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[SVC_New_Contract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00600].[SVC_New_PO_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[Workflow_Approval_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[Workflow_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[svcBillingFrequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00600].[svcFrequencyQty]'
GO
GRANT SELECT ON  [dbo].[SVC00600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00600] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SVC00600] TO [rpt_executive]
GO
