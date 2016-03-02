CREATE TABLE [dbo].[TAAC0130]
(
[ACCRUAL_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCRUEBY_I] [smallint] NOT NULL,
[MAXACCRUAL_I] [int] NOT NULL,
[MAXHRSAVAIL] [int] NOT NULL,
[ACCRUALAMOUNT_I] [int] NOT NULL,
[DAYS_I] [smallint] NOT NULL,
[HOURSPERYEAR_I] [int] NOT NULL,
[PAYPEROD] [smallint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TAAC0130] ADD CONSTRAINT [CK__TAAC0130__CHANGE__0D7B3171] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[TAAC0130] ADD CONSTRAINT [PKTAAC0130] PRIMARY KEY CLUSTERED  ([ACCRUAL_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAAC0130].[ACCRUAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAAC0130].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAAC0130].[ACCRUEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAAC0130].[MAXACCRUAL_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAAC0130].[MAXHRSAVAIL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAAC0130].[ACCRUALAMOUNT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAAC0130].[DAYS_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAAC0130].[HOURSPERYEAR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TAAC0130].[PAYPEROD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TAAC0130].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[TAAC0130].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TAAC0130].[NOTESINDEX_I]'
GO
GRANT SELECT ON  [dbo].[TAAC0130] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TAAC0130] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TAAC0130] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TAAC0130] TO [DYNGRP]
GO
