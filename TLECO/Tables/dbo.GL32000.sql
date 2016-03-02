CREATE TABLE [dbo].[GL32000]
(
[JRNENTRY] [int] NOT NULL,
[BUDGETID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODDT] [datetime] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[BUDGETAMT] [numeric] (19, 5) NOT NULL,
[BudgerAdjustment] [numeric] (19, 5) NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USWHPSTD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__GL32000__DEX_ROW__3A0D7D32] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL32000] ADD CONSTRAINT [CK__GL32000__PERIODD__2116E6DF] CHECK ((datepart(hour,[PERIODDT])=(0) AND datepart(minute,[PERIODDT])=(0) AND datepart(second,[PERIODDT])=(0) AND datepart(millisecond,[PERIODDT])=(0)))
GO
ALTER TABLE [dbo].[GL32000] ADD CONSTRAINT [CK__GL32000__TRXDATE__220B0B18] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[GL32000] ADD CONSTRAINT [PKGL32000] PRIMARY KEY NONCLUSTERED  ([JRNENTRY], [BUDGETID], [ACTINDX], [PERIODDT], [PERIODID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL32000] ON [dbo].[GL32000] ([BUDGETID], [ACTINDX], [PERIODDT], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[GL32000] ENABLE CHANGE_TRACKING WITH (TRACK_COLUMNS_UPDATED = ON)
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL32000].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL32000].[BUDGETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL32000].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL32000].[PERIODDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL32000].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL32000].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL32000].[BUDGETAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL32000].[BudgerAdjustment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL32000].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL32000].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL32000].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL32000].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL32000].[USWHPSTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL32000].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[GL32000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL32000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL32000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL32000] TO [DYNGRP]
GO
