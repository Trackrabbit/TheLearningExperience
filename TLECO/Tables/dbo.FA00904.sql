CREATE TABLE [dbo].[FA00904]
(
[FINANCIALINDX] [int] NOT NULL,
[ASSETINDEX] [int] NOT NULL,
[BOOKINDX] [int] NOT NULL,
[FA_Doc_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSDATESTAMP] [datetime] NOT NULL,
[TRANSTIMESTAMP] [datetime] NOT NULL,
[FISCALYRADDED] [smallint] NOT NULL,
[FAYEAR] [smallint] NOT NULL,
[FAPERIOD] [smallint] NOT NULL,
[DEPRFROMDATE] [datetime] NOT NULL,
[DEPRTODATE] [datetime] NOT NULL,
[AMOUNT] [numeric] (19, 5) NOT NULL,
[TRANSUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSACCTTYPE] [smallint] NOT NULL,
[INTERFACEGL] [tinyint] NOT NULL,
[GLINTTRXDATE] [datetime] NOT NULL,
[GLINTDATESTAMP] [datetime] NOT NULL,
[GLINTTIMESTAMP] [datetime] NOT NULL,
[GLINTACCTINDX] [int] NOT NULL,
[GLINTBTCHNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FA_Reset_Offset_Index] [int] NOT NULL,
[FA_Reset_User_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FA_Reset_Date] [datetime] NOT NULL,
[FA_Reset_Time] [datetime] NOT NULL,
[Ledger_ID] [smallint] NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA00904] ADD CONSTRAINT [CK__FA00904__FA_Rese__432CD318] CHECK ((datepart(day,[FA_Reset_Time])=(1) AND datepart(month,[FA_Reset_Time])=(1) AND datepart(year,[FA_Reset_Time])=(1900)))
GO
ALTER TABLE [dbo].[FA00904] ADD CONSTRAINT [CK__FA00904__GLINTTI__45151B8A] CHECK ((datepart(day,[GLINTTIMESTAMP])=(1) AND datepart(month,[GLINTTIMESTAMP])=(1) AND datepart(year,[GLINTTIMESTAMP])=(1900)))
GO
ALTER TABLE [dbo].[FA00904] ADD CONSTRAINT [CK__FA00904__TRANSTI__47F18835] CHECK ((datepart(day,[TRANSTIMESTAMP])=(1) AND datepart(month,[TRANSTIMESTAMP])=(1) AND datepart(year,[TRANSTIMESTAMP])=(1900)))
GO
ALTER TABLE [dbo].[FA00904] ADD CONSTRAINT [CK__FA00904__DEPRFRO__4050666D] CHECK ((datepart(hour,[DEPRFROMDATE])=(0) AND datepart(minute,[DEPRFROMDATE])=(0) AND datepart(second,[DEPRFROMDATE])=(0) AND datepart(millisecond,[DEPRFROMDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00904] ADD CONSTRAINT [CK__FA00904__DEPRTOD__41448AA6] CHECK ((datepart(hour,[DEPRTODATE])=(0) AND datepart(minute,[DEPRTODATE])=(0) AND datepart(second,[DEPRTODATE])=(0) AND datepart(millisecond,[DEPRTODATE])=(0)))
GO
ALTER TABLE [dbo].[FA00904] ADD CONSTRAINT [CK__FA00904__FA_Rese__4238AEDF] CHECK ((datepart(hour,[FA_Reset_Date])=(0) AND datepart(minute,[FA_Reset_Date])=(0) AND datepart(second,[FA_Reset_Date])=(0) AND datepart(millisecond,[FA_Reset_Date])=(0)))
GO
ALTER TABLE [dbo].[FA00904] ADD CONSTRAINT [CK__FA00904__GLINTDA__4420F751] CHECK ((datepart(hour,[GLINTDATESTAMP])=(0) AND datepart(minute,[GLINTDATESTAMP])=(0) AND datepart(second,[GLINTDATESTAMP])=(0) AND datepart(millisecond,[GLINTDATESTAMP])=(0)))
GO
ALTER TABLE [dbo].[FA00904] ADD CONSTRAINT [CK__FA00904__GLINTTR__46093FC3] CHECK ((datepart(hour,[GLINTTRXDATE])=(0) AND datepart(minute,[GLINTTRXDATE])=(0) AND datepart(second,[GLINTTRXDATE])=(0) AND datepart(millisecond,[GLINTTRXDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00904] ADD CONSTRAINT [CK__FA00904__TRANSDA__46FD63FC] CHECK ((datepart(hour,[TRANSDATESTAMP])=(0) AND datepart(minute,[TRANSDATESTAMP])=(0) AND datepart(second,[TRANSDATESTAMP])=(0) AND datepart(millisecond,[TRANSDATESTAMP])=(0)))
GO
ALTER TABLE [dbo].[FA00904] ADD CONSTRAINT [PKFA00904] PRIMARY KEY CLUSTERED  ([FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA00904] ON [dbo].[FA00904] ([ASSETINDEX], [BOOKINDX], [FAYEAR], [FAPERIOD], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA00904] ON [dbo].[FA00904] ([ASSETINDEX], [BOOKINDX], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5FA00904] ON [dbo].[FA00904] ([ASSETINDEX], [BOOKINDX], [SOURCDOC], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6FA00904] ON [dbo].[FA00904] ([ASSETINDEX], [BOOKINDX], [TRANSACCTTYPE], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4FA00904] ON [dbo].[FA00904] ([BOOKINDX], [INTERFACEGL], [GLINTBTCHNUM], [GLINTACCTINDX], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8FA00904] ON [dbo].[FA00904] ([FA_Doc_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7FA00904] ON [dbo].[FA00904] ([GLINTBTCHNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[FINANCIALINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[ASSETINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[BOOKINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00904].[FA_Doc_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00904].[TRANSDATESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00904].[TRANSTIMESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[FISCALYRADDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[FAYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[FAPERIOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00904].[DEPRFROMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00904].[DEPRTODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00904].[AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00904].[TRANSUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00904].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[TRANSACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[INTERFACEGL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00904].[GLINTTRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00904].[GLINTDATESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00904].[GLINTTIMESTAMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[GLINTACCTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00904].[GLINTBTCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[FA_Reset_Offset_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00904].[FA_Reset_User_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00904].[FA_Reset_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00904].[FA_Reset_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00904].[Ledger_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00904].[REFRENCE]'
GO
GRANT SELECT ON  [dbo].[FA00904] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA00904] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA00904] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA00904] TO [DYNGRP]
GO
