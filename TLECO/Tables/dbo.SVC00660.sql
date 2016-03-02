CREATE TABLE [dbo].[SVC00660]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNAME] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Contract_Length] [smallint] NOT NULL,
[Contract_Period] [smallint] NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[PREPAID] [tinyint] NOT NULL,
[PRICSHED] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BILLNGTH] [smallint] NOT NULL,
[BILPRD] [smallint] NOT NULL,
[BILSTRT] [datetime] NOT NULL,
[BILEND] [datetime] NOT NULL,
[BILONDY] [smallint] NOT NULL,
[BILCYC] [smallint] NOT NULL,
[SVC_Liability_Type] [smallint] NOT NULL,
[Bill_To_Customer] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Bill_To_Address_Code] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Invoice_Detail] [tinyint] NOT NULL,
[PARTPCT] [numeric] (19, 5) NOT NULL,
[LABPCT] [numeric] (19, 5) NOT NULL,
[MISCPCT] [numeric] (19, 5) NOT NULL,
[PMPRTPCT] [numeric] (19, 5) NOT NULL,
[PMLABPCT] [numeric] (19, 5) NOT NULL,
[PMMSCPCT] [numeric] (19, 5) NOT NULL,
[SVC_Paid_Contract] [tinyint] NOT NULL,
[DSCPCTAM] [smallint] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[svcBillingFrequency] [smallint] NOT NULL,
[svcFrequencyQty] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC00660] ADD CONSTRAINT [CK__SVC00660__TIME1__69727791] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC00660] ADD CONSTRAINT [CK__SVC00660__BILEND__64ADC274] CHECK ((datepart(hour,[BILEND])=(0) AND datepart(minute,[BILEND])=(0) AND datepart(second,[BILEND])=(0) AND datepart(millisecond,[BILEND])=(0)))
GO
ALTER TABLE [dbo].[SVC00660] ADD CONSTRAINT [CK__SVC00660__BILSTR__65A1E6AD] CHECK ((datepart(hour,[BILSTRT])=(0) AND datepart(minute,[BILSTRT])=(0) AND datepart(second,[BILSTRT])=(0) AND datepart(millisecond,[BILSTRT])=(0)))
GO
ALTER TABLE [dbo].[SVC00660] ADD CONSTRAINT [CK__SVC00660__ENDDAT__66960AE6] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00660] ADD CONSTRAINT [CK__SVC00660__EXCHDA__678A2F1F] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00660] ADD CONSTRAINT [CK__SVC00660__STRTDA__687E5358] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[SVC00660] ADD CONSTRAINT [PKSVC00660] PRIMARY KEY CLUSTERED  ([SOPTYPE], [SOPNUMBE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC00660] ON [dbo].[SVC00660] ([CUSTNMBR], [ADRSCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[CUSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[CNTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[Contract_Length]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[Contract_Period]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00660].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00660].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[PREPAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[PRICSHED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[BILLNGTH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[BILPRD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00660].[BILSTRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00660].[BILEND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[BILONDY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[BILCYC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[SVC_Liability_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[Bill_To_Customer]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[SVC_Bill_To_Address_Code]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[SVC_Invoice_Detail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00660].[PARTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00660].[LABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00660].[MISCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00660].[PMPRTPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00660].[PMLABPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00660].[PMMSCPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[SVC_Paid_Contract]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC00660].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00660].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00660].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC00660].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC00660].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[svcBillingFrequency]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC00660].[svcFrequencyQty]'
GO
GRANT SELECT ON  [dbo].[SVC00660] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC00660] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC00660] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC00660] TO [DYNGRP]
GO
