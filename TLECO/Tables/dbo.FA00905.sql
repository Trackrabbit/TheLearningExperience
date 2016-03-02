CREATE TABLE [dbo].[FA00905]
(
[GLINTBTCHNUM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLINTTRXDATE] [datetime] NOT NULL,
[FINANCIALINDX] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[ASSETINDEX] [int] NOT NULL,
[FAYEAR] [smallint] NOT NULL,
[FAPERIOD] [smallint] NOT NULL,
[DEPRFROMDATE] [datetime] NOT NULL,
[DEPRTODATE] [datetime] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AMOUNT] [numeric] (19, 5) NOT NULL,
[BOOKINDX] [int] NOT NULL,
[Ledger_ID] [smallint] NOT NULL,
[TRANSACCTTYPE] [smallint] NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FA_Doc_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA00905] ADD CONSTRAINT [CK__FA00905__DEPRFRO__4ACDF4E0] CHECK ((datepart(hour,[DEPRFROMDATE])=(0) AND datepart(minute,[DEPRFROMDATE])=(0) AND datepart(second,[DEPRFROMDATE])=(0) AND datepart(millisecond,[DEPRFROMDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00905] ADD CONSTRAINT [CK__FA00905__DEPRTOD__4BC21919] CHECK ((datepart(hour,[DEPRTODATE])=(0) AND datepart(minute,[DEPRTODATE])=(0) AND datepart(second,[DEPRTODATE])=(0) AND datepart(millisecond,[DEPRTODATE])=(0)))
GO
ALTER TABLE [dbo].[FA00905] ADD CONSTRAINT [CK__FA00905__GLINTTR__4CB63D52] CHECK ((datepart(hour,[GLINTTRXDATE])=(0) AND datepart(minute,[GLINTTRXDATE])=(0) AND datepart(second,[GLINTTRXDATE])=(0) AND datepart(millisecond,[GLINTTRXDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00905] ADD CONSTRAINT [PKFA00905] PRIMARY KEY NONCLUSTERED  ([GLINTBTCHNUM], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [CL1FA00905] ON [dbo].[FA00905] ([ACTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1FA00905] ON [dbo].[FA00905] ([ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6FA00905] ON [dbo].[FA00905] ([FA_Doc_Number], [GLINTBTCHNUM], [GLINTTRXDATE], [ASSETINDEX], [FAYEAR], [FAPERIOD], [TRANSACCTTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA00905] ON [dbo].[FA00905] ([FAYEAR], [FAPERIOD], [ASSETINDEX], [FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA00905] ON [dbo].[FA00905] ([FINANCIALINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5FA00905] ON [dbo].[FA00905] ([GLINTBTCHNUM], [GLINTTRXDATE], [ASSETINDEX], [FAYEAR], [FAPERIOD], [TRANSACCTTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00905].[GLINTBTCHNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00905].[GLINTTRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00905].[FINANCIALINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00905].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00905].[ASSETINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00905].[FAYEAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00905].[FAPERIOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00905].[DEPRFROMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00905].[DEPRTODATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00905].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00905].[AMOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00905].[BOOKINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00905].[Ledger_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00905].[TRANSACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00905].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00905].[FA_Doc_Number]'
GO
GRANT SELECT ON  [dbo].[FA00905] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA00905] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA00905] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA00905] TO [DYNGRP]
GO