CREATE TABLE [dbo].[SVC30608]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
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
[Cover_All] [tinyint] NOT NULL,
[canceled] [tinyint] NOT NULL,
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
[ORIGLASTAmountBilled] [numeric] (19, 5) NOT NULL,
[ORIGTOTAL] [numeric] (19, 5) NOT NULL,
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
[SVC_Contract_Version] [smallint] NOT NULL,
[SVC_Bill_To_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[svcBillingFrequency] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__CNTCOV__5150D53D] CHECK ((datepart(day,[CNTCOVPD_1])=(1) AND datepart(month,[CNTCOVPD_1])=(1) AND datepart(year,[CNTCOVPD_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__CNTCOV__5244F976] CHECK ((datepart(day,[CNTCOVPD_2])=(1) AND datepart(month,[CNTCOVPD_2])=(1) AND datepart(year,[CNTCOVPD_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__CNTCOV__53391DAF] CHECK ((datepart(day,[CNTCOVPD_3])=(1) AND datepart(month,[CNTCOVPD_3])=(1) AND datepart(year,[CNTCOVPD_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__CNTCOV__542D41E8] CHECK ((datepart(day,[CNTCOVPD_4])=(1) AND datepart(month,[CNTCOVPD_4])=(1) AND datepart(year,[CNTCOVPD_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__CNTCOV__55216621] CHECK ((datepart(day,[CNTCOVPD_5])=(1) AND datepart(month,[CNTCOVPD_5])=(1) AND datepart(year,[CNTCOVPD_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__CNTCOV__56158A5A] CHECK ((datepart(day,[CNTCOVPD_6])=(1) AND datepart(month,[CNTCOVPD_6])=(1) AND datepart(year,[CNTCOVPD_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__CNTCOV__5709AE93] CHECK ((datepart(day,[CNTCOVPD_7])=(1) AND datepart(month,[CNTCOVPD_7])=(1) AND datepart(year,[CNTCOVPD_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__Contra__58F1F705] CHECK ((datepart(day,[Contract_Coverage_Period_1])=(1) AND datepart(month,[Contract_Coverage_Period_1])=(1) AND datepart(year,[Contract_Coverage_Period_1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__Contra__59E61B3E] CHECK ((datepart(day,[Contract_Coverage_Period_2])=(1) AND datepart(month,[Contract_Coverage_Period_2])=(1) AND datepart(year,[Contract_Coverage_Period_2])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__Contra__5ADA3F77] CHECK ((datepart(day,[Contract_Coverage_Period_3])=(1) AND datepart(month,[Contract_Coverage_Period_3])=(1) AND datepart(year,[Contract_Coverage_Period_3])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__Contra__5BCE63B0] CHECK ((datepart(day,[Contract_Coverage_Period_4])=(1) AND datepart(month,[Contract_Coverage_Period_4])=(1) AND datepart(year,[Contract_Coverage_Period_4])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__Contra__5CC287E9] CHECK ((datepart(day,[Contract_Coverage_Period_5])=(1) AND datepart(month,[Contract_Coverage_Period_5])=(1) AND datepart(year,[Contract_Coverage_Period_5])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__Contra__5DB6AC22] CHECK ((datepart(day,[Contract_Coverage_Period_6])=(1) AND datepart(month,[Contract_Coverage_Period_6])=(1) AND datepart(year,[Contract_Coverage_Period_6])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__Contra__5EAAD05B] CHECK ((datepart(day,[Contract_Coverage_Period_7])=(1) AND datepart(month,[Contract_Coverage_Period_7])=(1) AND datepart(year,[Contract_Coverage_Period_7])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__ENTTME__61873D06] CHECK ((datepart(day,[ENTTME])=(1) AND datepart(month,[ENTTME])=(1) AND datepart(year,[ENTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__TIME1__6DED13EB] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__BILEND__4F688CCB] CHECK ((datepart(hour,[BILEND])=(0) AND datepart(minute,[BILEND])=(0) AND datepart(second,[BILEND])=(0) AND datepart(millisecond,[BILEND])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__BILSTR__505CB104] CHECK ((datepart(hour,[BILSTRT])=(0) AND datepart(minute,[BILSTRT])=(0) AND datepart(second,[BILSTRT])=(0) AND datepart(millisecond,[BILSTRT])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__Contra__57FDD2CC] CHECK ((datepart(hour,[Contract_Transfer_Date])=(0) AND datepart(minute,[Contract_Transfer_Date])=(0) AND datepart(second,[Contract_Transfer_Date])=(0) AND datepart(millisecond,[Contract_Transfer_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__ENDDAT__5F9EF494] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__ENTDTE__609318CD] CHECK ((datepart(hour,[ENTDTE])=(0) AND datepart(minute,[ENTDTE])=(0) AND datepart(second,[ENTDTE])=(0) AND datepart(millisecond,[ENTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__EXCHDA__627B613F] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__EXPNDA__636F8578] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__FRSTBL__6463A9B1] CHECK ((datepart(hour,[FRSTBLDTE])=(0) AND datepart(minute,[FRSTBLDTE])=(0) AND datepart(second,[FRSTBLDTE])=(0) AND datepart(millisecond,[FRSTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__FRXSTR__6557CDEA] CHECK ((datepart(hour,[FRXSTRT])=(0) AND datepart(minute,[FRXSTRT])=(0) AND datepart(second,[FRXSTRT])=(0) AND datepart(millisecond,[FRXSTRT])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__FRZEND__664BF223] CHECK ((datepart(hour,[FRZEND])=(0) AND datepart(minute,[FRZEND])=(0) AND datepart(second,[FRZEND])=(0) AND datepart(millisecond,[FRZEND])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__Last_L__68343A95] CHECK ((datepart(hour,[Last_Liability_Date])=(0) AND datepart(minute,[Last_Liability_Date])=(0) AND datepart(second,[Last_Liability_Date])=(0) AND datepart(millisecond,[Last_Liability_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__LSTBLD__6740165C] CHECK ((datepart(hour,[LSTBLDTE])=(0) AND datepart(minute,[LSTBLDTE])=(0) AND datepart(second,[LSTBLDTE])=(0) AND datepart(millisecond,[LSTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__Next_L__6A1C8307] CHECK ((datepart(hour,[Next_Liability_Date])=(0) AND datepart(minute,[Next_Liability_Date])=(0) AND datepart(second,[Next_Liability_Date])=(0) AND datepart(millisecond,[Next_Liability_Date])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__NXTBLD__69285ECE] CHECK ((datepart(hour,[NXTBLDTE])=(0) AND datepart(minute,[NXTBLDTE])=(0) AND datepart(second,[NXTBLDTE])=(0) AND datepart(millisecond,[NXTBLDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__QUOEXP__6B10A740] CHECK ((datepart(hour,[QUOEXPDA])=(0) AND datepart(minute,[QUOEXPDA])=(0) AND datepart(second,[QUOEXPDA])=(0) AND datepart(millisecond,[QUOEXPDA])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__STRTDA__6C04CB79] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [CK__SVC30608__SVC_Co__6CF8EFB2] CHECK ((datepart(hour,[SVC_Contract_Signed])=(0) AND datepart(minute,[SVC_Contract_Signed])=(0) AND datepart(second,[SVC_Contract_Signed])=(0) AND datepart(millisecond,[SVC_Contract_Signed])=(0)))
GO
ALTER TABLE [dbo].[SVC30608] ADD CONSTRAINT [PKSVC30608] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR], [SVC_Contract_Version], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC30608] ON [dbo].[SVC30608] ([CONSTS], [CUSTNMBR], [ADRSCODE], [Cover_All], [CONTNBR], [SVC_Contract_Version]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[Contract_Transfer_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[Contract_Transfer_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[priorityLevel]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[TIMEZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[CONTPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[RENCNTTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[RENPRCSCHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[PCTCRYFWD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[FRZEND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[FRXSTRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[MXINCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[BLKTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[VALTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[PRCSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[PARTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[LABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[MISCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[PMMSCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[PMPRTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[PMLABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[RETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[RTNBILLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[COMMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[COMPRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[BILSTRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[BILEND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[BILLNGTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[BILPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[TOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[FRSTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Last_Amount_Billed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[LSTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[NBRCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[ACTCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[TOTVALCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[NXTBLDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[CNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[PRICSHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[ENTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[MINBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[MAXBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[MAXBILL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[AUTOREN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[MSTCNTRCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[SRVTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[BILFRRET]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[TOTBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[PREPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[BILONDY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[BILCYC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[BILSTAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[ENTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[CNTCOVPD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[CNTCOVPD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[CNTCOVPD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[CNTCOVPD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[CNTCOVPD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[CNTCOVPD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[CNTCOVPD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[Contract_Coverage_Period_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[Contract_Coverage_Period_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[Contract_Coverage_Period_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[Contract_Coverage_Period_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[Contract_Coverage_Period_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[Contract_Coverage_Period_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[Contract_Coverage_Period_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[USECVPD_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[USECVPD_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[USECVPD_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[USECVPD_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[USECVPD_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[USECVPD_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[USECVPD_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[Contract_Length]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[Contract_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[Liabiltiy_Reduction]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Liability_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Total_Liability_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[NUMOFINV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[Quote_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[QUOEXPDA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[Credit_Hold]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[TAXEXMT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[TAXEXMT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[New_PO_Required]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[Contract_Renewal_Contact]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[Source_Contract_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[Source_Contract_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[Contract_Response_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[Liability_Months]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[Next_Liability_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[Last_Liability_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Total_Liability_Billed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Total_Unit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[Created_User_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[Source_User_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[SVC_Contract_Signed]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[SVC_Liability_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[RETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[Location_Segment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[Cover_All]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[canceled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[RATECALC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[VIEWMODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[ISMCTRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30608].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[ORIGVALTIM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[ORCOMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[ORIGRETNAGAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[ORIGRTNBILLD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[ORIGLASTAmountBilled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[ORIGTOTAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[ORIGTOTVALCAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[ORIGMINBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[ORIGMAXBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Originating_Max_Billable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[ORIGTOTBIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Orig_Invoiced_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Orig_Amount_To_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Orig_Liability_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[OrigTotLiabilityAmount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[OrigTotLiabBilled]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30608].[Originating_Total_Unit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[SVC_Contract_Version]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30608].[SVC_Bill_To_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30608].[svcBillingFrequency]'
GO
GRANT SELECT ON  [dbo].[SVC30608] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30608] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30608] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30608] TO [DYNGRP]
GO
